
package kr.co.ncspartner.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.Jeogi_suggestionsVO;


import org.springframework.stereotype.Repository;

@Repository("jeogi_suggestionsDAO")
public class Jeogi_suggestionsDAO extends EgovAbstractMapper {

	public int insert(Jeogi_suggestionsVO vo) throws Exception {
		return update("jeogi_suggestions.insert", vo);
	}

	public int update(Jeogi_suggestionsVO vo) throws Exception {
		return update("jeogi_suggestions.update", vo);
	}

	public int delete(Jeogi_suggestionsVO vo) throws Exception {
		return update("jeogi_suggestions.delete", vo);
	}

	public Jeogi_suggestionsVO select(Jeogi_suggestionsVO vo) throws Exception {
		return (Jeogi_suggestionsVO) selectOne("jeogi_suggestions.select", vo);
	}

	public List<?> selectList(Jeogi_suggestionsVO vo) throws Exception {
		return list("jeogi_suggestions.selectList", vo);
	}

	public int selectListTotCnt(Jeogi_suggestionsVO vo) {
		return (Integer) selectOne("jeogi_suggestions.selectListTotCnt", vo);
	}
	
	public Jeogi_suggestionsVO selectLogin(Jeogi_suggestionsVO vo) throws Exception {
		return (Jeogi_suggestionsVO) selectOne("jeogi_suggestions.selectLogin", vo);
	}	
	
}
