package com.essential.project.dto;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Amzen
 *
 */
@Entity
@Table(name = "rawInformation")
public class Begining {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	private String firstName;
	private String lastName;
	private String email;
	private String gender;
	private String dateOfBirth;
	private String weight;
	private String bloodPressure;
	private String country;
	private String state;
	private String city;
	private String phone;
	private String ssn;
	private String maritialStatus;
	private String doctorInfo;
	
	private String organizationInfo;
	
	private String disease;
	
	private String symptoms;
	
	private String herbals;
	private String checkupDate;
	
	
	public String getCheckupDate() {
		return checkupDate;
	}
	public void setCheckupDate(String checkupDate) {
		this.checkupDate = checkupDate;
	}
	public String getDoctorInfo() {
		return doctorInfo;
	}
	public void setDoctorInfo(String doctorInfo) {
		this.doctorInfo = doctorInfo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getOrganizationInfo() {
		return organizationInfo;
	}
	public void setOrganizationInfo(String organizationInfo) {
		this.organizationInfo = organizationInfo;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public String getHerbals() {
		return herbals;
	}
	public void setHerbals(String herbals) {
		this.herbals = herbals;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	public String getBloodPressure() {
		return bloodPressure;
	}
	public void setBloodPressure(String bloodPressure) {
		this.bloodPressure = bloodPressure;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getMaritialStatus() {
		return maritialStatus;
	}
	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}
	
}
