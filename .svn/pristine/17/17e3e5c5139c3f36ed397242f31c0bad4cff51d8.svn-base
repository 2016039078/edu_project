
package kr.co.ncspartner.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.Jeogi_faqVO;

import org.springframework.stereotype.Repository;

@Repository("jeogi_faqDAO")
public class Jeogi_faqDAO extends EgovAbstractMapper {

	public int insert(Jeogi_faqVO vo) throws Exception {
		return update("jeogi_faq.insert", vo);
	}

	public int update(Jeogi_faqVO vo) throws Exception {
		return update("jeogi_faq.update", vo);
	}

	public int delete(Jeogi_faqVO vo) throws Exception {
		return update("jeogi_faq.delete", vo);
	}

	public Jeogi_faqVO select(Jeogi_faqVO vo) throws Exception {
		return (Jeogi_faqVO) selectOne("jeogi_faq.select", vo);
	}

	public List<?> selectList(Jeogi_faqVO vo) throws Exception {
		return list("jeogi_faq.selectList", vo);
	}

	public int selectListTotCnt(Jeogi_faqVO vo) {
		return (Integer) selectOne("jeogi_faq.selectListTotCnt", vo);
	}
	
	public Jeogi_faqVO selectLogin(Jeogi_faqVO vo) throws Exception {
		return (Jeogi_faqVO) selectOne("jeogi_faq.selectLogin", vo);
	}	
	
}
