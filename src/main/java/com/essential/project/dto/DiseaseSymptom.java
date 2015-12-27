package com.essential.project.dto;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name = "diseasesymptom")
public class DiseaseSymptom {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	public DiseaseSymptom() {
		super();
	}
	public DiseaseSymptom(String disease, String symptom, String herbal, Date importDate, Long total, Long subTotal) {
		this.disease = disease;
		this.symptom = symptom;
		this.herbal = herbal;
		this.importDate = importDate;
		this.total = total.toString();
		this.subTotal = subTotal.toString();
	}

	private String disease;
	private String symptom;
	private int patientId;
	private String herbal;
	@Transient
	private String total;
	@Transient
	private String subTotal;
	private Long userId;

	private Long fileId;
	
	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getSubTotal() {
		return subTotal;
	}

	

	public void setSubTotal(String subTotal) {
		this.subTotal = subTotal;
	}

	
	public String getHerbal() {
		return herbal;
	}

	public void setHerbal(String herbal) {
		this.herbal = herbal;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	
	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getFileId() {
		return fileId;
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	private Date importDate;

	
	public Date getImportDate() {
		return importDate;
	}

	public void setImportDate(Date importDate) {
		this.importDate = importDate;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	
	
}
