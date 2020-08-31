
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.B_gesiDAO;
import kr.co.ncspartner.service.B_gesiService;
import kr.co.ncspartner.service.SampleService;
import kr.co.ncspartner.vo.B_gesiVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("b_gesiService")
public class B_gesiServiceImpl extends EgovAbstractServiceImpl implements B_gesiService {

	private static final Logger LOGGER = LoggerFactory.getLogger(B_gesiServiceImpl.class);

	@Resource(name = "b_gesiDAO")
	private B_gesiDAO dao;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(B_gesiVO vo) throws Exception {
		return dao.insert(vo);
	}

	@Override
	public int update(B_gesiVO vo) throws Exception {
		return dao.update(vo);
	}

	@Override
	public int updateHit(B_gesiVO vo) throws Exception {
		return dao.updateHit(vo);
	}
	
	@Override
	public int deleteFile(B_gesiVO vo) throws Exception {
		return dao.deleteFile(vo);
	}	
	
	@Override
	public int delete(B_gesiVO vo) throws Exception {
		return dao.delete(vo);
	}


	@Override
	public B_gesiVO select(B_gesiVO vo) throws Exception {
		return dao.select(vo);
	}

	@Override
	public List<?> selectList(B_gesiVO vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public int selectListTotCnt(B_gesiVO vo) {
		return dao.selectListTotCnt(vo);
	}

}
