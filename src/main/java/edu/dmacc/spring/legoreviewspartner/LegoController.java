package edu.dmacc.spring.legoreviewspartner;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LegoController {
	@Autowired LegoDao dao;

	private static final String[] ages = {"1-2", "3-5", "6-8", "9-11", "12+"};
	private static final String[] themes = {"Architecture", "City", "Classic", "Disney", "Elves", "Friends", "Juniors", "Minecraft", "NexoKnights", "Ninjago", "Star Wars", "Super Heros"};
	private static final String[] reviews = {"1-Bad", "2-OK", "3-Good", "4-Great", "5-Excellent"};
	
@RequestMapping(value = "/form")
	public ModelAndView lego() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("legoForm");
		modelAndView.addObject("lego", new Lego());
		modelAndView.addObject("ages", ages);
		modelAndView.addObject("themes", themes);
		return modelAndView;
}

@RequestMapping(value = "/reviewForm")
public ModelAndView review() {
	ModelAndView modelAndView = new ModelAndView();
	modelAndView.setViewName("reviewForm");
	modelAndView.addObject("review", new Review());
	List<Lego> allLegos = dao.getLegoIds();
	modelAndView.addObject("allLegos", allLegos);
	//List<Lego> allLegos = dao.getAllLegos();
	modelAndView.addObject("allLegos", allLegos);
	modelAndView.addObject("reviews", reviews);
	return modelAndView;
}

@RequestMapping(value = "/result")
	public ModelAndView processLego (Lego lego) {
		ModelAndView modelAndView = new ModelAndView();
		dao.insertLego(lego);
		modelAndView.setViewName("legoResult");
		modelAndView.addObject("l", lego);
		return modelAndView;
}

@Bean
	public LegoDao dao() {
		LegoDao bean = new LegoDao();
		return bean;
}

@RequestMapping(value = "/reviewResult")
public ModelAndView processReview (Review review) {
	ModelAndView modelAndView = new ModelAndView();
	System.out.println("I made it");
	dao.insertReview(review);
	modelAndView.setViewName("reviewResult");
	modelAndView.addObject("r", review);
	return modelAndView;
}

@RequestMapping(value = "/viewAllLegos")
	public ModelAndView viewAllLegos () {
		ModelAndView modelAndView = new ModelAndView();
		List<Lego> allLegos = dao.getAllLegos();
		modelAndView.setViewName("viewAllLegos");
		modelAndView.addObject("all", allLegos);
		return modelAndView;
}
@RequestMapping(value = "/viewAllReviews")
public ModelAndView viewAllReviews () {
	ModelAndView modelAndView = new ModelAndView();
	List<Review> allReviews = dao.getAllReviews();
	modelAndView.setViewName("viewAllReviews");
	modelAndView.addObject("allR", allReviews);
	return modelAndView;
}

@RequestMapping(value = "/deleteLego")
public ModelAndView deleteLego (Lego lego, HttpServletRequest request) {
	ModelAndView modelAndView = new ModelAndView();
	//Lego legoToDelete = dao.getLegoById(item.id);
	String id = request.getParameter("id");
	Lego legoToDelete = dao.getLegoById(7);
	dao.deleteLego(legoToDelete);
	List<Lego> allLegos = dao.getAllLegos();
	modelAndView.setViewName("viewAllLegos");
	modelAndView.addObject("all", allLegos);
	return modelAndView;
}

@RequestMapping(value = "/editLego")
public ModelAndView editLego (Lego lego) {
	ModelAndView modelAndView = new ModelAndView();
	Lego editLego = dao.getLegoById(4);
	System.out.println(lego.toString());
	modelAndView.setViewName("editLego");
	modelAndView.addObject("ages", ages);
	modelAndView.addObject("themes", themes);
	modelAndView.addObject("e", editLego);
	return modelAndView;
}
@RequestMapping(value = "/editResult")
public ModelAndView editResult (Lego lego) {
	ModelAndView modelAndView = new ModelAndView();
	dao.editLego(lego);
	List<Lego> allLegos = dao.getAllLegos();
	modelAndView.setViewName("viewAllLegos");
	modelAndView.addObject("all", allLegos);
	return modelAndView;
}

}
