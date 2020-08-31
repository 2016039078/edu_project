
package kr.co.ncspartner.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.SampleVO;

import org.springframework.stereotype.Repository;

@Repository("sampleDAO")
public class SampleDAO extends EgovAbstractMapper {

	public int insert(SampleVO vo) throws Exception {
		return update("sample.insert", vo);
	}

	public int update(SampleVO vo) throws Exception {
		return update("sample.update", vo);
	}

	public int delete(SampleVO vo) throws Exception {
		return update("sample.delete", vo);
	}

	public SampleVO select(SampleVO vo) throws Exception {
		return (SampleVO) selectOne("sample.select", vo);
	}

	public List<?> selectList(SampleVO vo) throws Exception {
		return list("sample.selectList", vo);
	}

	public int selectListTotCnt(SampleVO vo) {
		return (Integer) selectOne("sample.selectListTotCnt", vo);
	}

}
