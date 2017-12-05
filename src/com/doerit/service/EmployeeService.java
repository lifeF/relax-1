package com.doerit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doerit.dao.EmployeeMapper;
import com.doerit.model.Employee;
import com.doerit.util.Pager;

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
	
	public int stateChange(Patient patient) {
		return employeeMapper.insert(patient);
	}
}
