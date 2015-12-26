package com.essential.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essential.project.dto.DiseaseSymptom;
import com.essential.project.dto.Login;
import com.essential.project.service.DiseaseSymHerbPatientService;

@Controller
@RequestMapping(value="/diseaseSymptom")
public class DiseaseSymptomController {
	@Autowired
	DiseaseSymHerbPatientService diseaseSymHerbPatientService;

	@RequestMapping(value = "/getDeseaseAndSymptoms")
	@ResponseBody
	public List<DiseaseSymptom> getAllUsers() {
		return diseaseSymHerbPatientService.getAllDiseaseAndSymptoms();
	}
	
	

}