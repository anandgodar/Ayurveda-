package com.essential.project.dto;



import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="disease")
public class Disease {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	public Disease(){
		
	}
	
	public int getId() {
		return id;
	}
	
	public List<Symptoms> getSyptoms() {
		return syptoms;
	}

	public void setSyptoms(List<Symptoms> syptoms) {
		this.syptoms = syptoms;
	}

	@OneToMany(cascade=CascadeType.ALL)
	private List<Symptoms> syptoms;

	public String getDiseaseName() {
		return diseaseName;
	}

	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
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

	private String diseaseName;
	private String importId;
}
