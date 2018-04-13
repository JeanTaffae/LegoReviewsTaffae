package edu.dmacc.spring.legoreviewspartner;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class LegoDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("LegoReviewsTaffae");
	
	public void insertLego(Lego legoToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(legoToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Lego> getAllLegos() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select l from Lego l";
		TypedQuery<Lego> typedQuery = em.createQuery(q,Lego.class);
		List<Lego> all = typedQuery.getResultList();
		return all;
	}
	
	public List<Lego> getLegoNames() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Lego> typedQuery = em.createQuery("select ln.name from Lego ln",Lego.class);
		List<Lego> allNames = typedQuery.getResultList();
		System.out.println(allNames);
		return allNames;
	}
	
	public Lego getLegoById(int i) {
		EntityManager em=emfactory.createEntityManager();
		em.getTransaction().begin();
		Lego foundLego = em.find(Lego.class, i);
		em.close();
		return foundLego;
	}
	
	public void deleteLego (Lego toDelete) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Lego> typedQuery = em.createQuery(
		"select l from Lego l where l.id = :selectedId", Lego.class);
		typedQuery.setParameter("selectedId", toDelete.getId());
		typedQuery.setMaxResults(1);
		Lego result = typedQuery.getSingleResult();
		em.remove(result);
		em.getTransaction().commit();
		em.close();
	}
	
	public void editLego (Lego toEdit) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.merge(toEdit);
		em.getTransaction().commit();
		em.close();
		}

	public void insertReview(Review reviewToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(reviewToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
	public List<Review> getAllReviews() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select r from Review r";
		TypedQuery<Review> typedQuery = em.createQuery(q,Review.class);
		List<Review> all = typedQuery.getResultList();
		return all;
	}

	public Lego getLegoByName(String legoName) {
		EntityManager em=emfactory.createEntityManager();
		em.getTransaction().begin();
		Lego reviewLego = em.find(Lego.class, legoName);
		em.close();
		System.out.println(reviewLego);
		return reviewLego;
	}

}

