package com.caezar.javadojosninjas.javadojosninjas.Controllers;

import java.util.List;

import javax.validation.Valid;

import com.caezar.javadojosninjas.javadojosninjas.Models.Dojo;
import com.caezar.javadojosninjas.javadojosninjas.Models.Ninja;
import com.caezar.javadojosninjas.javadojosninjas.Services.DojoNinjaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MainController {
	@Autowired
	private DojoNinjaService dojoNinja;
	
	
	@RequestMapping("/")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "dojo";
	}
	
	@PostMapping("/")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult results) {
		//VALIDATE
		if(results.hasErrors()) {
			return "dojo";
		}
		else {
			dojoNinja.createDojo(dojo);
			return "redirect:/";
		}
	}
	
	@RequestMapping("/ninjas")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojo = dojoNinja.getAllDojos();
		model.addAttribute("dojos", dojo);
		return "ninja";
	}
	
	@PostMapping("/ninjas")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult results, Model model) {
		//VALIDATE
		if(results.hasErrors()) {
			List<Dojo> dojo = dojoNinja.getAllDojos();
			model.addAttribute("dojos", dojo);
			return "ninja";
		}
		else {
			dojoNinja.createNinja(ninja);
			return "redirect:/ninjas";
		}
	}
	
	@RequestMapping("/dojos/{id}")
	public String roster(@PathVariable("id") Long id, Model model) {	
		Dojo dojo = dojoNinja.getOneDojo(id);
		model.addAttribute("dojos", dojo);
		return "dojo";
		
	}
}