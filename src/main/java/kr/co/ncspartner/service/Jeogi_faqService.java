
package kr.co.ncspartner.service;

import java.util.List;

import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.Jeogi_faqVO;


public interface Jeogi_faqService {

	int insert(Jeogi_faqVO vo) throws Exception;

	int update(Jeogi_faqVO vo) throws Exception;

	int delete(Jeogi_faqVO vo) throws Exception;

	Jeogi_faqVO select(Jeogi_faqVO vo) throws Exception;

	List<?> selectList(Jeogi_faqVO vo) throws Exception;

	int selectListTotCnt(Jeogi_faqVO vo);
	
	Jeogi_faqVO selectLogin(Jeogi_faqVO vo) throws Exception;

}
