
package kr.co.ncspartner.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import egovframework.example.cmmn.vo.DefaultVO;

public class PrecautionsVO extends DefaultVO {
	
	private String r_id;
	private String noti_title01;
	private String noti_title02;
	private String noti_title03;
	private String noti_title04;
	private String noti_title05;

	
	
	public String getR_id() {
		return r_id;
	}



	public void setR_id(String r_id) {
		this.r_id = r_id;
	}



	public String getNoti_title01() {
		return noti_title01;
	}



	public void setNoti_title01(String noti_title01) {
		this.noti_title01 = noti_title01;
	}



	public String getNoti_title02() {
		return noti_title02;
	}



	public void setNoti_title02(String noti_title02) {
		this.noti_title02 = noti_title02;
	}



	public String getNoti_title03() {
		return noti_title03;
	}



	public void setNoti_title03(String noti_title03) {
		this.noti_title03 = noti_title03;
	}



	public String getNoti_title04() {
		return noti_title04;
	}



	public void setNoti_title04(String noti_title04) {
		this.noti_title04 = noti_title04;
	}



	public String getNoti_title05() {
		return noti_title05;
	}



	public void setNoti_title05(String noti_title05) {
		this.noti_title05 = noti_title05;
	}



	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}
