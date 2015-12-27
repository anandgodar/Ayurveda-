package com.essential.project.service;

import java.util.List;

import com.essential.project.dto.DiseaseSymptom;


public interface DiseaseSymHerbPatientService {
	
	public List<DiseaseSymptom> getAllDiseaseAndSymptoms();
	public List<DiseaseSymptom> getFrontReport();
	public DiseaseSymptom getOverallStats();
	public List<DiseaseSymptom> getOverallDiseases();
	
	
	

}
