package com.essential.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.essential.project.dto.Login;

@Repository
public interface UserRepository extends JpaRepository<Login, Integer>{
	
}