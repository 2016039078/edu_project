
package kr.co.ncspartner.dao;

import java.util.List;


import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.Jeogi_userVO;

import org.springframework.stereotype.Repository;

@Repository("jeogi_userDAO")
public class Jeogi_userDAO extends EgovAbstractMapper {


	public int insert(Jeogi_userVO vo) throws Exception {
		return update("jeogi_user.insert", vo);
	}

	public int update(Jeogi_userVO vo) throws Exception {
		return update("jeogi_user.update", vo);
	}
	
	public int updateHostIntro(Jeogi_userVO vo) throws Exception {
		return update("jeogi_user.updateHostIntro", vo);
	}

	public int delete(Jeogi_userVO vo) throws Exception {
		return update("jeogi_user.delete", vo);
	}

	public Jeogi_userVO select(Jeogi_userVO vo) throws Exception {
		return (Jeogi_userVO) selectOne("jeogi_user.select", vo);
	}
	
	public Jeogi_userVO selectHost(Jeogi_userVO vo) throws Exception {
		return (Jeogi_userVO) selectOne("jeogi_user.selectHost", vo);
	}

	public List<?> selectList(Jeogi_userVO vo) throws Exception {
		return list("jeogi_user.selectList", vo);
	}

	public int selectListTotCnt(Jeogi_userVO vo) {
		return (Integer) selectOne("jeogi_user.selectListTotCnt", vo);
	}
	
	public Jeogi_userVO selectLogin(Jeogi_userVO vo) throws Exception {
		return (Jeogi_userVO) selectOne("jeogi_user.selectLogin", vo);
	}	
	
}
