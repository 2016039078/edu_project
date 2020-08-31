
package kr.co.ncspartner.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.web.multipart.MultipartFile;

import egovframework.example.cmmn.vo.DefaultVO;

public class MessengerVO extends DefaultVO {

	private String r_id;
	private String ms_seq;
	private String ms_id;
	private String user_id;
	private String ms_message;
	private String m_datetime;
	private String r_title;
	private String host_name;

	public String getHost_name() {
		return host_name;
	}

	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getMs_seq() {
		return ms_seq;
	}

	public void setMs_seq(String ms_seq) {
		this.ms_seq = ms_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getMs_message() {
		return ms_message;
	}

	public void setMs_message(String ms_message) {
		this.ms_message = ms_message;
	}

	public String getM_datetime() {
		return m_datetime;
	}

	public void setM_datetime(String m_datetime) {
		this.m_datetime = m_datetime;
	}

	public String getMs_id() {
		return ms_id;
	}

	public void setMs_id(String ms_id) {
		this.ms_id = ms_id;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}
