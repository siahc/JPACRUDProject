package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class SucculentTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Succulent succulent;

	@Test
	@DisplayName("test Succulent entity mappings")
	void test1() {
	assertNotNull(succulent);
	assertEquals("aloe", succulent.getCommonName());
	assertEquals("aloe_vera", succulent.getScientificName());
	assertEquals("Long, triangular-leaves; typically with soft thorns.", succulent.getDescription());
	// ***PRICE SHOULD BE A DOUBLE NOT A STRING*** (it was ".getprice(String) in autocomplete for some reason
	assertEquals("5.0", succulent.getPrice());
	assertEquals("medium", succulent.getWateringNeeds());
	}
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SucculentPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		succulent = em.find(Succulent.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

//	@Test
//	void test_Succulent_entity_mapping() {
//		assertNotNull(succulent);
//		assertEquals("Aloe", succulent.getCommonName());
//	}

}
