package com.caezar.javadojosninjas.javadojosninjas.Services;

import java.util.List;

import com.caezar.javadojosninjas.javadojosninjas.Models.Dojo;
import com.caezar.javadojosninjas.javadojosninjas.Models.Ninja;
import com.caezar.javadojosninjas.javadojosninjas.Repositories.DojoRepository;
import com.caezar.javadojosninjas.javadojosninjas.Repositories.NinjaRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class DojoNinjaService {
	@Autowired
	private DojoRepository dojoRepo;
	
	@Autowired
	private NinjaRepository ninjaRepo;
	
	//CREATE
	public Dojo createDojo(Dojo newDojo) {
		return dojoRepo.save(newDojo);
	}
	
	public Ninja createNinja(Ninja newNinja) {
		return ninjaRepo.save(newNinja);
	}
	
	//READ ONE DOJO
	public Dojo getOneDojo(Long id) {
		return dojoRepo.findById(id).orElse(null);
	}
	
	//READ ALL NINJAS
	public List<Ninja> getAllNinjas(){
		return ninjaRepo.findAll();
	}
	
	//READ ALL DOJOS
	public List<Dojo> getAllDojos(){
		return dojoRepo.findAll();
	}
	
}