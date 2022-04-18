package com.caezar.javadojosninjas.javadojosninjas.Repositories;

import java.util.List;

import com.caezar.javadojosninjas.javadojosninjas.Models.Ninja;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long>{
	List<Ninja> findAll();
}