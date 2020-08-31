
package kr.co.ncspartner.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import egovframework.example.cmmn.vo.DefaultVO;

public class Jeogi_faqVO extends DefaultVO {

	private String faq_seq;
	private String question;
	private String answer;
	private String r_date;
	
	
	
	public String getFaq_seq() {
		return faq_seq;
	}



	public void setFaq_seq(String faq_seq) {
		this.faq_seq = faq_seq;
	}



	public String getQuestion() {
		return question;
	}



	public void setQuestion(String question) {
		this.question = question;
	}



	public String getAnswer() {
		return answer;
	}



	public void setAnswer(String answer) {
		this.answer = answer;
	}



	public String getR_date() {
		return r_date;
	}



	public void setR_date(String r_date) {
		this.r_date = r_date;
	}



	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	
}
