
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.JeogiDAO;
import kr.co.ncspartner.dao.SampleDAO;
import kr.co.ncspartner.service.JeogiService;
import kr.co.ncspartner.service.SampleService;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.SampleVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("jeogiService")
public class JeogiServiceImpl extends EgovAbstractServiceImpl implements JeogiService {

	private static final Logger LOGGER = LoggerFactory.getLogger(JeogiServiceImpl.class);

	@Resource(name = "jeogiDAO")
	private JeogiDAO jeogiDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(JeogiVO vo) throws Exception {
		LOGGER.debug(vo.toString());
		int cnt = jeogiDAO.insert(vo);
		return cnt;
	}

	@Override
	public int update(JeogiVO vo) throws Exception {
		return jeogiDAO.update(vo);
	}
	
	@Override
	public int updateInterest(JeogiVO vo) throws Exception {
		return jeogiDAO.updateInterest(vo);
	}

	@Override
	public int delete(JeogiVO vo) throws Exception {
		return jeogiDAO.delete(vo);
	}


	@Override
	public JeogiVO select(JeogiVO vo) throws Exception {
		return jeogiDAO.select(vo);
	}
	
	@Override
	public JeogiVO select2(JeogiVO vo) throws Exception {
		return jeogiDAO.select2(vo);
	}

	@Override
	public List<?> selectList(JeogiVO vo) throws Exception {
		return jeogiDAO.selectList(vo);
	}
	
	@Override
	public List<?> selectListHosting(JeogiVO vo) throws Exception {
		return jeogiDAO.selectListHosting(vo);
	}
	
	
	@Override
	public List<?> selectListbestrooms(JeogiVO vo) throws Exception {
		return jeogiDAO.selectListbestrooms(vo);
	}
	@Override
	public List<?> selectListRecentlyUpdate(JeogiVO vo) throws Exception {
		return jeogiDAO.selectListRecentlyUpdate(vo);
	}
	@Override
	public List<?> selectsearchList(JeogiVO vo) throws Exception {
		return jeogiDAO.selectsearchList(vo);
	} 
	@Override
	public int selectListTotCnt(JeogiVO vo) {
		return jeogiDAO.selectListTotCnt(vo);
	}
	@Override
	public JeogiVO selectmaxr_id(JeogiVO vo) throws Exception {
		return jeogiDAO.selectmaxr_id(vo);
	}

}
