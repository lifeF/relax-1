package com.doerit.action.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.Employee;
import com.doerit.model.UserAccount;
import com.doerit.service.DistrictService;
import com.doerit.service.EmployeeService;
import com.doerit.service.UserAccountService;
import com.doerit.util.State;

public class EmployeeAction extends AbstractDownloadManamentAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	EmployeeService EmployeeService;
	@Autowired
	UserAccountService UserAccountService;
	@Autowired
	DistrictService districtService;

	private byte state;
	private UserAccount UserAccount;
	private String EmployeeID;
	private String searchKey;
	private String searchWord;
	private Employee Employee1;
	private String userRole;
	private String title;

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

	public String viewAll() {

		if (this.searchKey == null) {
			if (this.EmployeeID != null) {
				UserAccount = UserAccountService.viewByID(getEmployeeID());
				System.out.println("User State Change");
				if (this.state == 1) {
					this.state = 0;
				} else {
					this.state = 1;
				}
				UserAccount.setStatus(this.state);
				UserAccountService.UPDATE(UserAccount);
			}
			try {
				System.out.println(" List get From Again");
				beforeAction();
				pager = EmployeeService.viewAllByPagerAndStatus(pager, State.ACTIVE.getDatabaseValue());
				pager = setActionContext(pager);
			} catch (Exception e) {
				addActionError("Exception occur");
				// logger
				e.printStackTrace();
			}
			
			
		}
		else {
			try {
				System.out.println(" List get From Again");
				beforeAction();
				pager = EmployeeService.search(pager,this.searchKey, this.searchWord);
				pager = setActionContext(pager);
			} catch (Exception e) {
				addActionError("Exception occur");
				// logger
				e.printStackTrace();
			}
			
			
			
		}
		
		
		return SUCCESS;

	}
	
	public String RegisterEMP() {
		return SUCCESS;
	}
	public String addEMP() {
		Employee1=new Employee();
		Employee1.setUserRole(this.userRole);
		Employee1.setTitle(this.title);
		System.out.print(Employee1.getUserRole());
		System.out.print(Employee1.getTitle());
		
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

	public String getEmployeeID() {
		return EmployeeID;
	}

	public void setEmployeeID(String employeeID) {
		EmployeeID = employeeID;
	}

	public UserAccount getUserAccount() {
		return UserAccount;
	}

	public void setUserAccount(UserAccount userAccount) {
		UserAccount = userAccount;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public Employee getEmployee1() {
		return Employee1;
	}

	public void setEmployee1(Employee employee1) {
		Employee1 = employee1;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
