package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Succulent;

public interface SucculentDAO {

	public boolean delete(int succulentId);
	public Succulent create(Succulent succulent);
	public Succulent update(int id, Succulent succulent);
	public List<Succulent> findAll();
	public Succulent findById(int id);
	
}
