
package	kr.co.ncspartner.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.web.multipart.MultipartFile;

import egovframework.example.cmmn.vo.DefaultVO;

public class JeogiVO extends DefaultVO {
	
	private String r_id;
	private String r_title;
	private String r_intro;
	private String r_price;
	private String lat;
	private String lon;
	private String max_p;
	private String bed;
	private String bedroom;
	private String address;
	private String type;
	private String housing_type;
	private String bathroom;
	private String user_id;
	private String r_like;
	private String area;
	private String r_attach01;
	private String r_attach02;
	private String r_attach03;
	private String r_attach04;
	private String r_attach05;
	private String r_path01;
	private String r_path02;
	private String r_path03;
	private String r_path04;
	private String r_path05;
	private String rhost_date;
	private String no;
	
	public String getNo() {
		return no;
	}


	public void setNo(String no) {
		this.no = no;
	}


	public String getRhost_date() {
		return rhost_date;
	}


	public void setRhost_date(String rhost_date) {
		this.rhost_date = rhost_date;
	}


	private MultipartFile myfile1;
	private MultipartFile myfile2;
	private MultipartFile myfile3;
	private MultipartFile myfile4;
	private MultipartFile myfile5;
	
	public String getR_like() {
		return r_like;
	}


	public void setR_like(String r_like) {
		this.r_like = r_like;
	}


	public String getR_path01() {
		return r_path01;
	}


	public void setR_path01(String r_path01) {
		this.r_path01 = r_path01;
	}


	public String getR_path02() {
		return r_path02;
	}


	public void setR_path02(String r_path02) {
		this.r_path02 = r_path02;
	}


	public String getR_path03() {
		return r_path03;
	}


	public void setR_path03(String r_path03) {
		this.r_path03 = r_path03;
	}


	public String getR_path04() {
		return r_path04;
	}


	public void setR_path04(String r_path04) {
		this.r_path04 = r_path04;
	}


	public String getR_path05() {
		return r_path05;
	}


	public void setR_path05(String r_path05) {
		this.r_path05 = r_path05;
	}

	public MultipartFile getMyfile2() {
		return myfile2;
	}


	public void setMyfile2(MultipartFile myfile2) {
		this.myfile2 = myfile2;
	}


	public MultipartFile getMyfile3() {
		return myfile3;
	}


	public void setMyfile3(MultipartFile myfile3) {
		this.myfile3 = myfile3;
	}


	public MultipartFile getMyfile4() {
		return myfile4;
	}


	public void setMyfile4(MultipartFile myfile4) {
		this.myfile4 = myfile4;
	}


	public MultipartFile getMyfile5() {
		return myfile5;
	}


	public void setMyfile5(MultipartFile myfile5) {
		this.myfile5 = myfile5;
	}


	public MultipartFile getMyfile1() {
		return myfile1;
	}

	public void setMyfile1(MultipartFile myfile1) {
		this.myfile1 = myfile1;
	}

	public String getR_id() {
		return r_id;
	}


	public String getBathroom() {
		return bathroom;
	}


	public void setBath_room(String bathroom) {
		this.bathroom = bathroom;
	}


	public void setR_id(String r_id) {
		this.r_id = r_id;
	}


	public String getR_title() {
		return r_title;
	}


	public void setR_title(String r_title) {
		this.r_title = r_title;
	}


	public String getR_intro() {
		return r_intro;
	}


	public void setR_intro(String r_intro) {
		this.r_intro = r_intro;
	}


	public String getR_price() {
		return r_price;
	}


	public void setR_price(String r_price) {
		this.r_price = r_price;
	}


	public String getMax_p() {
		return max_p;
	}


	public void setMax_p(String max_p) {
		this.max_p = max_p;
	}


	public String getBed() {
		return bed;
	}


	public void setBed(String bed) {
		this.bed = bed;
	}


	public String getBedroom() {
		return bedroom;
	}


	public void setBedroom(String bedroom) {
		this.bedroom = bedroom;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getLike() {
		return r_like;
	}


	public void setLike(String like) {
		this.r_like = like;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getR_attach01() {
		return r_attach01;
	}


	public void setR_attach01(String r_attach01) {
		this.r_attach01 = r_attach01;
	}


	public String getR_attach02() {
		return r_attach02;
	}


	public void setR_attach02(String r_attach02) {
		this.r_attach02 = r_attach02;
	}


	public String getR_attach03() {
		return r_attach03;
	}


	public void setR_attach03(String r_attach03) {
		this.r_attach03 = r_attach03;
	}


	public String getR_attach04() {
		return r_attach04;
	}


	public void setR_attach04(String r_attach04) {
		this.r_attach04 = r_attach04;
	}


	public String getR_attach05() {
		return r_attach05;
	}


	public void setR_attach05(String r_attach05) {
		this.r_attach05 = r_attach05;
	}
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	public String getHousing_type() {
		return housing_type;
	}


	public void setHousing_type(String housing_type) {
		this.housing_type = housing_type;
	}


	public void setBathroom(String bathroom) {
		this.bathroom = bathroom;
	}


	public String getLat() {
		return lat;
	}


	public void setLat(String lat) {
		this.lat = lat;
	}


	public String getLon() {
		return lon;
	}


	public void setLon(String lon) {
		this.lon = lon;
	}
	
	

}
