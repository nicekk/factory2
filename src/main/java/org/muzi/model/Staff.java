package org.muzi.model;

import java.util.Date;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 员工
 * 
 * @author Administrator
 *
 */
public class Staff {

	/**
	 * 主键id
	 */
	private int id;

	/**
	 * 姓名
	 */
	private String name;

	/**
	 * 性别
	 */
	private String sex;

	/**
	 * 年龄
	 */
	private int age;

	/**
	 * 手机号
	 */
	private String telephone;

	/**
	 * 地址
	 */
	private String address;

	/**
	 * 岗位
	 */
	private String job;

	/**
	 * 岗位系数
	 */
	private double jobQuotiety;

	/**
	 * 员工状态（试用，转正，离职）
	 */
	private String status;

	/**
	 * 银行卡号
	 */
	private int bankcardNo;

	/**
	 * 入职时间
	 */
	private Date gmtOnJob;

	/**
	 * 工龄
	 */
	private int jobAge;
	
	/**
	 * 用户名
	 */
	private String username;
	
	/**
	 * 密码
	 */
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public double getJobQuotiety() {
		return jobQuotiety;
	}

	public void setJobQuotiety(double jobQuotiety) {
		this.jobQuotiety = jobQuotiety;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getBankcardNo() {
		return bankcardNo;
	}

	public void setBankcardNo(int bankcardNo) {
		this.bankcardNo = bankcardNo;
	}

	public Date getGmtOnJob() {
		return gmtOnJob;
	}

	public void setGmtOnJob(Date gmtOnJob) {
		this.gmtOnJob = gmtOnJob;
	}

	public int getJobAge() {
		return jobAge;
	}

	public void setJobAge(int jobAge) {
		this.jobAge = jobAge;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this,
				ToStringStyle.SHORT_PREFIX_STYLE);
	}

}
