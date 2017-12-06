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
	
	
	private byte state;
	private Employee E1;
	


	public byte getState() {
		return state;
	}
	public void setState(byte state) {
		this.state = state;
	}


	private Employee Employee;
	private List<Employee> Employees;
	
	public String dashboard() {
		
		return SUCCESS;
		
	}
	public String ChangeStateByID() {
		System.out.println("Update"+ this.state);
		E1=
		if (this.state==1){
			this.state=0;
		}
		else {
			this.state=1;
		}
		System.out.println("Update"+ this.state);
		E1.setStatus(this.state);
		EmployeeService.update(E1);
		
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
	public Employee getE1() {
		return E1;
	}
	public void setE1(Employee e1) {
		E1 = e1;
	}
	
	
}
