package com.essential.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.essential.project.dto.Login;


@Repository
public interface UserRepository extends JpaRepository<Login, Integer>{

	@Query("")
	public Login findByusernameAndPassword(@Param("username") String username, @Param("password") String password);
	
}