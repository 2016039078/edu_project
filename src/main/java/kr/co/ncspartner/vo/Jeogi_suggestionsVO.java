
package kr.co.ncspartner.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import egovframework.example.cmmn.vo.DefaultVO;

public class Jeogi_suggestionsVO extends DefaultVO {

	private String sug_seq;
	private String sug_user_id;
	private String sug_content;
	private String sug_date;
	
	
	public String getSug_seq() {
		return sug_seq;
	}
	public void setSug_seq(String sug_seq) {
		this.sug_seq = sug_seq;
	}
	public String getSug_user_id() {
		return sug_user_id;
	}
	public void setSug_user_id(String sug_user_id) {
		this.sug_user_id = sug_user_id;
	}
	public String getSug_content() {
		return sug_content;
	}
	public void setSug_content(String sug_content) {
		this.sug_content = sug_content;
	}
	public String getSug_date() {
		return sug_date;
	}
	public void setSug_date(String sug_date) {
		this.sug_date = sug_date;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	
}
