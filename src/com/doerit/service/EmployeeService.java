package com.doerit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doerit.dao.EmployeeMapper;
import com.doerit.model.Employee;
import com.doerit.model.Patient;
import com.doerit.model.fullEmployeeDetails;
import com.doerit.util.Pager;
import com.doerit.util.State;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeMapper employeeMapper;

	public Employee viewById(String id) {
		return employeeMapper.selectByPrimaryKey(id);
	}

	public Pager viewAllByPagerAndStatus(Pager p, byte state) {

		p.setList(employeeMapper.viewAllByStatus(p, state));
		p.setTotal(employeeMapper.countAllByStatus(state));

		return p;
	}

	public int update(Employee employee) {
		return employeeMapper.updateByPrimaryKeySelective(employee);
	}

	public Pager search(Pager p, String searchKey, String searchWord) {

		List<fullEmployeeDetails> Employees = new ArrayList<>(0);

		switch (searchKey) {

		case "id":
			Employees = employeeMapper.searchByID(p, "%" + searchWord + "%");
			break;
		case "surname":
			Employees = employeeMapper.searchBySurname(p, "%" + searchWord + "%");
			break;
		case "firstname":
			Employees = employeeMapper.searchByFirstName(p, "%" + searchWord + "%");
			break;
		case "nic":
			Employees = employeeMapper.searchByNic(p, "%" + searchWord + "%");
			break;
		case "mobile":
			Employees = employeeMapper.searchByMobile(p, "%" + searchWord + "%");
			break;
		case "email":
			Employees = employeeMapper.searchByEmail(p, "%" + searchWord + "%");
			break;
		default:
			Employees = employeeMapper.searchByID(p, "%" + searchWord + "%");
			break;
		}

		p.setList(Employees);
		p.setTotal(Employees.size());
		return p;

	}

	public int insert(Employee em) {
		return employeeMapper.insertSelective(em);
	}
}
