package com.caezar.javadojosninjas.javadojosninjas.Repositories;

import java.util.List;

import com.caezar.javadojosninjas.javadojosninjas.Models.Dojo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long> {
	List<Dojo> findAll();
}