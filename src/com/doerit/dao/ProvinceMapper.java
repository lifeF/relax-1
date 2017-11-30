package com.doerit.dao;

import com.doerit.model.Province;
import com.doerit.model.ProvinceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
public interface ProvinceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int countByExample(ProvinceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int deleteByExample(ProvinceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int insert(Province record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int insertSelective(Province record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    List<Province> selectByExample(ProvinceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    Province selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByExampleSelective(@Param("record") Province record, @Param("example") ProvinceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByExample(@Param("record") Province record, @Param("example") ProvinceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByPrimaryKeySelective(Province record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_province
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByPrimaryKey(Province record);
}