package org.muzi.model;

import java.util.Date;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 员工日产量
 * 
 * @author Administrator
 *
 */
public class DayAmount {

	/**
	 * 主键id
	 */
	private int id;

	/**
	 * 员工id
	 */
	private int staffId;

	/**
	 * 生产线
	 */
	private String productLine;

	/**
	 * 生产线状态
	 */
	private String productStatus;

	/**
	 * 产量
	 */
	private int amount;
	
	/**
	 * 记录产量的时间
	 */
	private Date gmtCurrent;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getProductLine() {
		return productLine;
	}

	public void setProductLine(String productLine) {
		this.productLine = productLine;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Date getGmtCurrent() {
		return gmtCurrent;
	}

	public void setGmtCurrent(Date gmtCurrent) {
		this.gmtCurrent = gmtCurrent;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this,
				ToStringStyle.SHORT_PREFIX_STYLE);
	}
}
