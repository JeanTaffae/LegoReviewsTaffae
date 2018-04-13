package edu.dmacc.spring.legoreviewspartner;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "reviews")

public class Review {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private Gender gender;
	private int age;
	private String review;
	@ManyToOne
	@JoinColumn (name = "LEGO_ID")
	private Lego lego;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Review(int id, String name, Gender gender, int age, String review, Lego lego) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.review = review;
		this.lego = lego;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Lego getLego() {
		return lego;
	}

	public void setLego(Lego lego) {
		this.lego = lego;
	}

	@Override
	public String toString() {
		return "Review [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", review=" + review
				+ ", lego=" + lego + "]";
	}
	

}
