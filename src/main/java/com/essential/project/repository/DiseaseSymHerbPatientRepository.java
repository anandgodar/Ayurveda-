package com.essential.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.essential.project.dto.DiseaseSymptom;

@Repository
public interface DiseaseSymHerbPatientRepository extends JpaRepository<DiseaseSymptom, Integer>{
	
}