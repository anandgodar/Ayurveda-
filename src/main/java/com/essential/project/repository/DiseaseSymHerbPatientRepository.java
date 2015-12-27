package com.essential.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.essential.project.dto.DiseaseSymptom;

@Repository
public interface DiseaseSymHerbPatientRepository extends JpaRepository<DiseaseSymptom, Integer>{
	
	
	/*@Query(nativeQuery = true,value = "select distinct disease,symptom,herbal,importDate,(select count(*)from DISEASESYMPTOM) total,count(*) subTotal from DISEASESYMPTOM group by disease,symptom,herbal,importDate")
	public List<Object[]> getFrontReport();*/
	
	@Query("select distinct new com.essential.project.dto.DiseaseSymptom(d.disease,d.symptom,d.herbal,d.importDate,(select count(*)from DiseaseSymptom),count(*)) from DiseaseSymptom d group by d.disease,d.symptom,d.herbal,d.importDate")
	public List<DiseaseSymptom> getFrontReport();
	
	/*@Query(nativeQuery=true,value = "select count(distinct disease) diseaseCount,count(distinct symptom) symptomCount,count(distinct herbal) herbalCount,count(distinct patientid) patientCount from diseaseSymptom")
	public List<Object[]> getOverallStats();*/
	
	@Query("select new com.essential.project.dto.DiseaseSymptom(count(distinct disease),count(distinct symptom) ,count(distinct herbal) ,count(distinct patientid)) from DiseaseSymptom")
	public List<DiseaseSymptom> getOverallStats();
	
	@Query(" select new com.essential.project.dto.DiseaseSymptom(disease , count(*))  from DiseaseSymptom group by disease")
	public List<DiseaseSymptom> getOverallDiseases();
	

}