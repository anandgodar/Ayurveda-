package com.essential.project.dto;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="symptom")
public class Symptoms {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	public Symptoms(){
		
	}
	
	public int getId() {
		return id;
	}

	public String getSymptomName() {
		return symptomName;
	}

	public void setSymptomName(String symptomName) {
		this.symptomName = symptomName;
	}

	public String getImportId() {
		return importId;
	}

	public void setImportId(String importId) {
		this.importId = importId;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String symptomName;
	private String importId;
}
