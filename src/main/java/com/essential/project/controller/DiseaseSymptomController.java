package com.essential.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essential.project.dto.DiseaseSymptom;
import com.essential.project.service.DiseaseSymHerbPatientService;

@Controller
@RequestMapping(value="/diseaseSymptom")
public class DiseaseSymptomController {
	@Autowired
	DiseaseSymHerbPatientService diseaseSymHerbPatientService;

	@RequestMapping(value = "/getDeseaseAndSymptoms")
	@ResponseBody
	public List<DiseaseSymptom> getDeseaseAndSymptoms() {
		return diseaseSymHerbPatientService.getFrontReport();
	
	}
	@RequestMapping(value = "/getOverallPatients")
	@ResponseBody
	public List<Object[]> getOverallPatients() {
		return diseaseSymHerbPatientService.getOverallPatients();
	
	}
	
	
	@RequestMapping(value = "/getOverallStats")
	@ResponseBody
	public DiseaseSymptom getOverallStats() {
		return diseaseSymHerbPatientService.getOverallStats();
	
	}
	
	@RequestMapping(value = "/getOverallDiseases")
	@ResponseBody
	public List<DiseaseSymptom> getOverallDiseases() {
		return diseaseSymHerbPatientService.getOverallDiseases();
	
	}
	
	@RequestMapping(value = "/getPatientByDisease/{disease}",method=RequestMethod.GET)
	@ResponseBody
	public List<Object[]> getPatientByDisease(@PathVariable("disease") String diseaseName ) {
		System.out.println(diseaseSymHerbPatientService.getPatientByDisease(diseaseName.trim()));
		return diseaseSymHerbPatientService.getPatientByDisease(diseaseName.trim());
	
	}
	
	

}
