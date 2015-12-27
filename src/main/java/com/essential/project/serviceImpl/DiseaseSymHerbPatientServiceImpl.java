package com.essential.project.serviceImpl;

import java.util.ArrayList;
import java.util.Date;
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

	@Override
	public List<DiseaseSymptom> getFrontReport() {
		List<Object[]>  sy = dshpRepository.getFrontReport();
		List<DiseaseSymptom> result = new ArrayList<DiseaseSymptom>(sy.size());
		for(Object[] x: sy){
			DiseaseSymptom symp = new DiseaseSymptom();
			symp.setDisease(x[0].toString());
			symp.setSymptom(x[1].toString());
			symp.setHerbal(x[2].toString());
		    symp.setImportDate((Date) x[3]);
			symp.setTotal(x[4].toString());
			symp.setSubTotal(x[5].toString());
			result.add(symp);
		}
		return result;
	}


	
	
	
	
	
}
