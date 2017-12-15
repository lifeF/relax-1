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
	
	//to insert 
	private UserAccount UserAccount;
	
	private String EmployeeID;
	private String searchKey;
	private String searchWord;
	private Employee Employee1;
	private String userRole;
	private String title;
	private String surname;
	private String initials;
	private String firstName;
	private String nic;
	private String designation;
	private String department;
	private String userName;
	private String userPassword;
	private String Error;
	private String ok;
	
	
	
	
	

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
		try {
		Error=null;
		setOk(null);
		Employee1=new Employee();
		Employee1.setUserRole(this.userRole);
		Employee1.setTitle(this.title);
		Employee1.setSurname(this.surname);		
		Employee1.setInitials(this.initials);	
		Employee1.setFirstName(this.firstName);	
		Employee1.setNic(this.nic);	
		Employee1.setDesignation(this.designation);	
		Employee1.setId("KGS"+nic+"V");
		Employee1.setDepartment(this.department);
		
		UserAccount=new UserAccount();
		UserAccount.setId("UK233SDW"+this.id);
		UserAccount.setUserName(this.userName);
		UserAccount.setUserPassword(this.userPassword);
		UserAccount.setRelationId("KGS"+nic+"V");
		UserAccount.setCategoryRelationId("EMPLOYEE");
		byte status=1;
		UserAccount.setStatus(status);
		
		UserAccount U1=UserAccountService.viewByEmail(this.userName);
		
		if(U1!=null) {
			Error ="already use this username";
			return INPUT;
		}
		//UserAccountService.save(UserAccount);
		EmployeeService.insert(Employee1);
		
		this.setOk("ok");
		
		return SUCCESS;
		}
		catch(Exception e) {
			Error="Error occured";
			return INPUT;
		}
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

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getInitials() {
		return initials;
	}

	public void setInitials(String initials) {
		this.initials = initials;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getError() {
		return Error;
	}

	public void setError(String error) {
		Error = error;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getOk() {
		return ok;
	}

	public void setOk(String ok) {
		this.ok = ok;
	}

}
