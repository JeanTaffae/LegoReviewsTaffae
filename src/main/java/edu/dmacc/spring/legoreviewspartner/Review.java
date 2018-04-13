package edu.dmacc.spring.legoreviewspartner;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	@Column (name = "REVIEW_VALUE")
	private String review;
	@Column (name = "LEGO_ID")
	private int legoId;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
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


	public int getLegoId() {
		return legoId;
	}


	public void setLegoId(int legoId) {
		this.legoId = legoId;
	}


}
