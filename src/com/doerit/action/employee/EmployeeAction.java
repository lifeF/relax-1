package com.doerit.action.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.Employee;
import com.doerit.service.DistrictService;
import com.doerit.service.EmployeeService;
import com.doerit.util.State;

public class EmployeeAction  extends AbstractDownloadManamentAction{
	
	private static final long serialVersionUID = 1L;

	@Autowired EmployeeService EmployeeService;
	@Autowired DistrictService districtService;
	
	
	private Employee Employee;
	private List<Employee> Employees;
	
	
	public String viewAll() {
		System.out.println("OK");
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


	public Employee getEmployee() {
		return Employee;
	}


	public void setEmployee(Employee employee) {
		Employee = employee;
	}


	public List<Employee> getEmployees() {
		return Employees;
	}


	public void setEmployees(List<Employee> employees) {
		Employees = employees;
	}
	
	
}
