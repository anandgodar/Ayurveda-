package com.essential.project.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essential.project.dto.DiseaseSymptom;
import com.essential.project.repository.DiseaseSymHerbPatientRepository;
import com.essential.project.service.DiseaseSymHerbPatientService;
@Service
public class DiseaseSymHerbPatientServiceImpl implements DiseaseSymHerbPatientService {
	
	@Autowired
	DiseaseSymHerbPatientRepository dshpRepository;

	@Override
	public List<DiseaseSymptom> getAllDiseaseAndSymptoms() {
		return dshpRepository.findAll();
	}

	/*@Override
	public List<DiseaseSymptom> getFrontReport() {
		return dshpRepository.getFrontReport();
	}
	*/
	
	
	
}
