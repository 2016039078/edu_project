
package kr.co.ncspartner.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.B_gesiVO;


import org.springframework.stereotype.Repository;

@Repository("b_gesiDAO")
public class B_gesiDAO extends EgovAbstractMapper {

	public int insert(B_gesiVO vo) throws Exception {
		return update("b_gesi.insert", vo);
	}

	public int update(B_gesiVO vo) throws Exception {
		return update("b_gesi.update", vo);
	}
	
	public int deleteFile(B_gesiVO vo) throws Exception {
		return update("b_gesi.deleteFile", vo);
	}	
	
	public int updateHit(B_gesiVO vo) throws Exception {
		return update("b_gesi.updateHit", vo);
	}		

	public int delete(B_gesiVO vo) throws Exception {
		return update("b_gesi.delete", vo);
	}

	public B_gesiVO select(B_gesiVO vo) throws Exception {
		return (B_gesiVO) selectOne("b_gesi.select", vo);
	}

	public List<?> selectList(B_gesiVO vo) throws Exception {
		return list("b_gesi.selectList", vo);
	}

	public int selectListTotCnt(B_gesiVO vo) {
		return (Integer) selectOne("b_gesi.selectListTotCnt", vo);
	}

}
