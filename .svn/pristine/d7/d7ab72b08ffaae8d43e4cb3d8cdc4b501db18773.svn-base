
package kr.co.ncspartner.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.PrecautionsVO;
import org.springframework.stereotype.Repository;

@Repository("precautionsDAO")
public class PrecautionsDAO extends EgovAbstractMapper {

	public int insert(PrecautionsVO vo) throws Exception {
		return update("precautions.insert", vo);
	}

	public int update(PrecautionsVO vo) throws Exception {
		return update("precautions.update", vo);
	}

	public int delete(PrecautionsVO vo) throws Exception {
		return update("precautions.delete", vo);
	}

	public PrecautionsVO select(PrecautionsVO vo) throws Exception {
		return (PrecautionsVO) selectOne("precautions.select", vo);
	}

	public List<?> selectList(PrecautionsVO vo) throws Exception {
		return list("precautions.selectList", vo);
	}

	public int selectListTotCnt(PrecautionsVO vo) {
		return (Integer) selectOne("precautions.selectListTotCnt", vo);
	}

}
