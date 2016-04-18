package org.muzi.model;

import java.util.Date;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 员工日考勤
 * 
 * @author Administrator
 *
 */
public class DayAttendance {

	/**
	 * 主键id
	 */
	private int id;

	/**
	 * 员工id
	 */
	private int staffId;

	/**
	 * 当前时间
	 */
	private Date gmtCurrent;

	/**
	 * 是否请假
	 */
	private int leaveOff;

	/**
	 * 是否迟到
	 */
	private int late;

	/**
	 * 是否早退
	 */
	private int leaveEarly;

	/**
	 * 罚金
	 */
	private int punishMoney;

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

	public Date getGmtCurrent() {
		return gmtCurrent;
	}

	public void setGmtCurrent(Date gmtCurrent) {
		this.gmtCurrent = gmtCurrent;
	}

	public int getLeaveOff() {
		return leaveOff;
	}

	public void setLeaveOff(int leaveOff) {
		this.leaveOff = leaveOff;
	}

	public int getLate() {
		return late;
	}

	public void setLate(int late) {
		this.late = late;
	}

	public int getLeaveEarly() {
		return leaveEarly;
	}

	public void setLeaveEarly(int leaveEarly) {
		this.leaveEarly = leaveEarly;
	}

	public int getPunishMoney() {
		return punishMoney;
	}

	public void setPunishMoney(int punishMoney) {
		this.punishMoney = punishMoney;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this,
				ToStringStyle.SHORT_PREFIX_STYLE);
	}

}
