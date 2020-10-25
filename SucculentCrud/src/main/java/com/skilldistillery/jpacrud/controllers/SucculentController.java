package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.SucculentDAO;
import com.skilldistillery.jpacrud.entities.Succulent;

@Controller
public class SucculentController {
	
@Autowired
private SucculentDAO succulentDao;

	@RequestMapping(path = "/")
	public String index(Model model) {
		///ToDO Get list of films, add to model
	List<Succulent> succulentList = succulentDao.findAll();
	model.addAttribute("succulents", succulentList);
	return "index";
	// return "index"; // if using a ViewResolver.
	}
	
	@RequestMapping(path = "getSucculent.do")
	public String showSucculent(Integer sid, Model model) {
		Succulent succulent = succulentDao.findById(sid);
		if (succulent == null) {
			return "notFound";
		}
		model.addAttribute("succulent", succulent);
		return "getSucculent";
	}
	@RequestMapping(path = "deleteSucculent.do")
	public String deleteSucculent(Integer sid, Model model) {
		try {
			boolean isDeleted = succulentDao.delete(sid);
			if (isDeleted) {
				return "delete";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "deleteError";
		}
		return "deleteError";
	}
	@RequestMapping(path = "updateForm.do")
	public String getUpdateForm(Integer sid, Model model) {
		Succulent succulent = succulentDao.findById(sid);
		if (succulent == null) {
			return "notFound";
		}
		model.addAttribute("succulent", succulent);
		return "updateForm";
	}
//	@RequestMapping(path = "updateSucculent.do")
//	public String getUpdateForm(Integer sid, Model model) {
//		TODO: add form fields to method args
	
//		TODO: Create updateSucculent object from args
	//Succulent succulent = succulentDao.update(sid, updateSucculent); 
//		if (succulent == null) {
//			return "updateError"; //TODO: Add a view for updateError.jsp
//		}
//		model.addAttribute("succulent", succulent);
//		return "getSucculent"; //already implemented
//	}
}
