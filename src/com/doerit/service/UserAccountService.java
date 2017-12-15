package com.doerit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doerit.dao.UserAccountMapper;
import com.doerit.model.UserAccount;
import com.doerit.util.State;

@Service
public class UserAccountService {

	@Autowired
	private UserAccountMapper userAccountMapper;
	
	public int save(UserAccount u) {
		return userAccountMapper.insertSelective(u);
	}
	
	public UserAccount viewByEmailAndPassword(String email, String password) {
		return userAccountMapper.findByEmailPasswordAndState(email, password, State.ACTIVE.getDatabaseValue());
	}
	
	public UserAccount viewByEmail(String email) {
		return userAccountMapper.findByEmailandState(email,  State.ACTIVE.getDatabaseValue());
	}
	
	public UserAccount viewByID(String EmployeeID) {
		return userAccountMapper.viewByID(EmployeeID);
	}
	
	public int UPDATE(UserAccount UserAccount) {
		return userAccountMapper.updateByPrimaryKey(UserAccount);
	}
	
}
