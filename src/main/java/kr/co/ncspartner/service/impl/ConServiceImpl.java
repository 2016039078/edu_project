
package kr.co.ncspartner.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.ConDAO;
import kr.co.ncspartner.service.ConService;
import kr.co.ncspartner.vo.ConVO;


import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("conService")
public class ConServiceImpl extends EgovAbstractServiceImpl implements ConService {

	private static final Logger LOGGER = LoggerFactory.getLogger(ConServiceImpl.class);

	@Resource(name = "conDAO")
	private ConDAO conDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(ConVO vo) throws Exception {
		LOGGER.debug(vo.toString());
		LOGGER.debug(vo.toString());
		int cnt = conDAO.insert(vo);
		return cnt;
	}

	@Override
	public int update(ConVO vo) throws Exception {
		return conDAO.update(vo);
	}

	@Override
	public int delete(ConVO vo) throws Exception {
		return conDAO.delete(vo);
	}


	@Override
	public ConVO select(ConVO vo) throws Exception {
		return conDAO.select(vo);
	}

	@Override
	public List<?> selectList(ConVO vo) throws Exception {
		return conDAO.selectList(vo);
	}

	@Override
	public int selectListTotCnt(ConVO vo) {
		return conDAO.selectListTotCnt(vo);
	}
	
	@Override
	public List<Map<String, Object>> selectOneWeekDay() throws Exception {
		return conDAO.selectOneWeekDay();
	}
	

}
