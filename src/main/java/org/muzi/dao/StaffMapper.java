package org.muzi.dao;

import java.util.List;

import org.muzi.annotation.MybatisAnnotation;
import org.muzi.model.Staff;

@MybatisAnnotation
public interface StaffMapper {

	/**
	 * 根据username查询用户
	 * @param username
	 * @return
	 */
	public Staff selectByUsername(String username);
	
	/**
	 * 查询所有员工
	 * @return
	 */
	public List<Staff> selectAll();
	
	/**
	 * 新增员工
	 * @param staff
	 */
	public void insert(Staff staff);
}
