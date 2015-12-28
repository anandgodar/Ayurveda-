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

	@Override
	public List<DiseaseSymptom> getFrontReport() {
		return dshpRepository.getFrontReport();
		
		/*List<Object[]>  sy = dshpRepository.getFrontReport();
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
		return result;*/
	}

	@Override
	public DiseaseSymptom getOverallStats() {
		return dshpRepository.getOverallStats().get(0);
		/*Object[] res = ok.get(0);
		int diseaseCount =  Integer.valueOf(res[0].toString());
		int symptomCount =  Integer.valueOf(res[1].toString());
		int herbalCount =  Integer.valueOf(res[2].toString());
		int patientCount =  Integer.valueOf(res[3].toString());
		DiseaseSymptom symp = new DiseaseSymptom();
		symp.setDiseaseCount(diseaseCount);
		symp.setPatientCount(patientCount);
	
		symp.setHerbalCount(herbalCount);
		symp.setSymptomCount(symptomCount);
		return symp;*/
		
	}

	@Override
	public List<DiseaseSymptom> getOverallDiseases() {
		return dshpRepository.getOverallDiseases();
	}

	@Override
	public List<Object[]> getOverallPatients() {
		return dshpRepository.getOverallPatients();
	}

	@Override
	public List<Object[]> getPatientByDisease(String diseaseName) {
		return dshpRepository.getPatientByDisease(diseaseName);
	}

	@Override
	public List<DiseaseSymptom> getOverallSymptoms() {
		return dshpRepository.getOverallSymptoms();
	}

	@Override
	public List<DiseaseSymptom> getOverallHerbals() {
		return dshpRepository.getOverallHerbals();
	}
	
	
	
	
	
}
