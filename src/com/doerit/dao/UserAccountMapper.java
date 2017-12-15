package com.doerit.dao;

import com.doerit.model.UserAccount;
import com.doerit.model.UserAccountExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

public interface UserAccountMapper {

    int countByExample(UserAccountExample example);
    int deleteByExample(UserAccountExample example);
    int deleteByPrimaryKey(String id);
    int insert(UserAccount record);
    int insertSelective(UserAccount record);
    List<UserAccount> selectByExample(UserAccountExample example);
    UserAccount selectByPrimaryKey(String id);
    int updateByExampleSelective(@Param("record") UserAccount record, @Param("example") UserAccountExample example);
    int updateByExample(@Param("record") UserAccount record, @Param("example") UserAccountExample example);
    int updateByPrimaryKeySelective(UserAccount record);
    int updateByPrimaryKey(UserAccount record); 
    
    @Select("SELECT ID, USER_NAME, CATEGORY_RELATION_ID, RELATION_ID, STATUS "
    		+ "FROM tbl_user_account WHERE USER_NAME = #{userName} AND "
    		+ "USER_PASSWORD = #{password} AND STATUS = #{status}")
    @ResultMap("BaseResultMap")
	UserAccount findByEmailPasswordAndState(@Param("userName")String userName, 
			@Param("password")String password, @Param("status")byte databaseValue);
    
    @Select("SELECT ID, USER_NAME, CATEGORY_RELATION_ID, RELATION_ID, STATUS "
    		+ "FROM tbl_user_account WHERE USER_NAME = #{userName} AND "
    		+ " STATUS = #{status}")
    @ResultMap("BaseResultMap")
	UserAccount findByEmailandState(@Param("userName")String userName, 
			 @Param("status")byte databaseValue);
    
    @Select("SELECT * "
    		+ "FROM tbl_user_account WHERE RELATION_ID=#{USER_EMPLOYEE_ID}")
    @ResultMap("BaseResultMap")
	UserAccount viewByID(@Param("USER_EMPLOYEE_ID")String EmployeeID);
    

}