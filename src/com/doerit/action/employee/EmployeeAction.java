package com.doerit.action.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.Patient;
import com.doerit.service.DistrictService;
import com.doerit.service.EmployeeService;
import com.doerit.util.State;

public class EmployeeAction  extends AbstractDownloadManamentAction{
	
	private static final long serialVersionUID = 1L;

	@Autowired EmployeeService EmployeeService;
	@Autowired DistrictService districtService;
	
	
	private Patient Employee;
	private List<Patient> Employees;
	
	
	public String viewAll() {
		
		System.out.println("i'm here");
		try {
			beforeAction();
			pager = EmployeeService.viewAllByPagerAndStatus(pager, State.ACTIVE.getDatabaseValue());
			pager = setActionContext(pager);
		} catch (Exception e) {
			addActionError("Exception occur");
			//logger
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public Patient getEmployee() {
		return Employee;
	}
	public void setEmployee(Patient employee) {
		Employee = employee;
	}
	public List<Patient> getEmployees() {
		return Employees;
	}
	public void setEmployees(List<Patient> employees) {
		Employees = employees;
	}

}
