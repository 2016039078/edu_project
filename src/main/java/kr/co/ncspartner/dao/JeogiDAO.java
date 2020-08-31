
package kr.co.ncspartner.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.SampleVO;

import org.springframework.stereotype.Repository;

@Repository("jeogiDAO")
public class JeogiDAO extends EgovAbstractMapper {

	public int insert(JeogiVO vo) throws Exception {
		return update("jeogi.insert", vo);
	}
	
	public int update(JeogiVO vo) throws Exception {
		return update("jeogi.update", vo);
	}
	
	public int updateInterest(JeogiVO vo) throws Exception {
		return update("jeogi.updateInterest", vo);
	}

	public int delete(JeogiVO vo) throws Exception {
		return update("jeogi.delete", vo);
	}

	public JeogiVO select(JeogiVO vo) throws Exception {
		return (JeogiVO) selectOne("jeogi.select", vo);
	}
	public JeogiVO selectmaxr_id(JeogiVO vo) throws Exception {
		return (JeogiVO) selectOne("jeogi.selectmaxr_id", vo);
	}
	
	public JeogiVO select2(JeogiVO vo) throws Exception {
		return (JeogiVO) selectOne("jeogi.select2", vo);
	}
	
	public List<?> selectList(JeogiVO vo) throws Exception {
		return list("jeogi.selectList", vo);
	}
	
	public List<?> selectListHosting(JeogiVO vo) throws Exception {
		return list("jeogi.selectListHosting", vo);
	}
	
	public List<?> selectListRecentlyUpdate(JeogiVO vo) throws Exception {
		return list("jeogi.selectListRecentlyUpdate", vo);
	}
	
	public List<?> selectListbestrooms(JeogiVO vo) throws Exception {
		return list("jeogi.selectListbestrooms", vo);
	}
	
	public List<?> selectsearchList(JeogiVO vo) throws Exception {
		return list("jeogi.selectsearchList", vo);
	}

	public int selectListTotCnt(JeogiVO vo) {
		return (Integer) selectOne("jeogi.selectListTotCnt", vo);
	}

}
