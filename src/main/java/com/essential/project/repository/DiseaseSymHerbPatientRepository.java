package com.essential.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.essential.project.dto.DiseaseSymptom;

@Repository
public interface DiseaseSymHerbPatientRepository extends JpaRepository<DiseaseSymptom, Integer>{

	@Query("select e from (select distinct disease , symptom,herbal,importdate,(select count(*)from DISEASESYMPTOM) total,count(*) subTotal from DISEASESYMPTOM p group by disease,symptom,herbal,importdate) e")
	public List<DiseaseSymptom> getFrontReport();
}