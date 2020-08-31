
package kr.co.ncspartner.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import egovframework.example.cmmn.vo.DefaultVO;

public class LikelistVO extends DefaultVO {

	private String like_id;
	private String user_id;
	private String r_id;
	private String user_name;
	private String r_title;
	private String r_attach01;
	private String 	r_path01;

	
	public String getLike_id() {
		return like_id;
	}
	public void setLike_id(String like_id) {
		this.like_id = like_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_attach01() {
		return r_attach01;
	}
	public void setR_attach01(String r_attach01) {
		this.r_attach01 = r_attach01;
	}
	
	public String getR_path01() {
		return r_path01;
	}
	public void setR_path01(String r_path01) {
		this.r_path01 = r_path01;
	}
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	
	
}
