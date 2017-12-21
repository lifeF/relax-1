package com.doerit.action.investigation;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.District;
import com.doerit.model.Patient;
import com.doerit.model.Investigation;
import com.doerit.model.PatientAdditionalProperty;
import com.doerit.model.PatientGuardianWithBLOBs;
import com.doerit.service.DistrictService;
import com.doerit.service.PatientAdditionalPropertyService;
import com.doerit.service.PatientGuardianService;
import com.doerit.service.PatientService;
import com.doerit.util.PdfPatientInformation;
import com.doerit.util.PdfPatientSticker;
import com.doerit.util.State;
import com.itextpdf.text.DocumentException;
import com.opensymphony.xwork2.ActionSupport;



public class InvestigationAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Autowired PatientService patientService;
	@Autowired DistrictService districtService;
	@Autowired PatientAdditionalPropertyService patientAdditionalPropertyService;
	@Autowired PatientGuardianService patientGuardianService;	

	private Investigation investigation = new Investigation();
	
	public String registrationForm() {
		return SUCCESS;
	}
	
	public String processRegister() {
		return SUCCESS;
	}

	public Investigation getInvestigation(){
		return investigation;
	}
	
	public void setInvestigation(Investigation investigation){
		this.investigation = investigation;
	}
	
	
	
		
}
