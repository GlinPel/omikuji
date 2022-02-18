package com.gleenpeltroche.omikuji;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
	@RequestMapping("/omikuji")
	public String confirmationPage(Model model){
	    return "index.jsp";
	}
	
	@RequestMapping("/omikuji/show")
	public String show(HttpSession session, Model model){
		model.addAttribute("number", session.getAttribute("number"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("person", session.getAttribute("person"));
		model.addAttribute("hobby", session.getAttribute("hobby"));
		model.addAttribute("living", session.getAttribute("living"));
		model.addAttribute("saytext", session.getAttribute("saytext"));
	    return "show.jsp";
	}
	
	@RequestMapping(value="/data", method=RequestMethod.POST)
	public String processPayment(
		HttpSession session,
	    @RequestParam(value="number") Integer number,
	    @RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="living") String living,
		@RequestParam(value="saytext") String saytext
		) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("living", living);
		session.setAttribute("saytext", saytext);
	    return "redirect:/omikuji/show";
	}
}
