package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Succulent;

@Transactional
@Service
public class SucculentDAOImpl implements SucculentDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Succulent> findAll() {
		String jpql = "SELECT s FROM Succulent s";
		List<Succulent> succulents = em.createQuery(jpql, Succulent.class).getResultList();
		return succulents;
	}

	@Override
	public Succulent findById(int id) {
		return em.find(Succulent.class, id);
	}

	@Override
	public boolean delete(int id) {

		Succulent poorSucculent = em.find(Succulent.class, id);
		em.remove(poorSucculent);
		boolean succulentWasDeleted = !em.contains(poorSucculent);
		em.flush();
		return succulentWasDeleted;
	}

	@Override
	public Succulent update(int id, Succulent succulent) {

		// find the succulent to be updated
		Succulent dbSucculent = em.find(Succulent.class, id);

		// start your transaction
		// assign all the data from the sent in Succulent object to the one in the
		// database
		dbSucculent.setCommonName(succulent.getCommonName());
		dbSucculent.setScientificName(succulent.getScientificName());
		dbSucculent.setDescription(succulent.getDescription());
		dbSucculent.setPrice(succulent.getPrice());
		dbSucculent.setWateringNeeds(succulent.getWateringNeeds());

		em.flush();
		return dbSucculent;
	}

	@Override
	public Succulent create(Succulent succulent) {

		System.out.println("Succulent before: " + succulent);
		em.persist(succulent);
		System.out.println("Succulent after: " + succulent);
		em.flush();
		return succulent;
	}

}
