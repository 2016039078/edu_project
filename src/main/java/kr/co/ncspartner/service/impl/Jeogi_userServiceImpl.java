
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.Jeogi_userDAO;
import kr.co.ncspartner.service.Jeogi_userService;
import kr.co.ncspartner.vo.Jeogi_userVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("Jeogi_userService")
public class Jeogi_userServiceImpl extends EgovAbstractServiceImpl implements Jeogi_userService {

	private static final Logger LOGGER = LoggerFactory.getLogger(Jeogi_userServiceImpl.class);

	@Resource(name = "jeogi_userDAO")
	private Jeogi_userDAO jeogi_userDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(Jeogi_userVO vo) throws Exception {
		LOGGER.debug(vo.toString());

//		String user_id = egovIdGnrService.getNextStringId();
//		vo.setUser_id(user_id);
//		LOGGER.debug(vo.toString());

		int cnt = jeogi_userDAO.insert(vo);
		return cnt;
	}

	@Override
	public int update(Jeogi_userVO vo) throws Exception {
		return jeogi_userDAO.update(vo);
	}
	
	@Override
	public int updateHostIntro(Jeogi_userVO vo) throws Exception {
		return jeogi_userDAO.updateHostIntro(vo);
	}

	@Override
	public int delete(Jeogi_userVO vo) throws Exception {
		return jeogi_userDAO.delete(vo);
	}


	@Override
	public Jeogi_userVO select(Jeogi_userVO vo) throws Exception {
		return jeogi_userDAO.select(vo);
	}
	
	@Override
	public Jeogi_userVO selectHost(Jeogi_userVO vo) throws Exception {
		return jeogi_userDAO.selectHost(vo);
	}

	@Override
	public List<?> selectList(Jeogi_userVO vo) throws Exception {
		return jeogi_userDAO.selectList(vo);
	}

	@Override
	public int selectListTotCnt(Jeogi_userVO vo) {
		return jeogi_userDAO.selectListTotCnt(vo);
	}
	
	@Override
	public Jeogi_userVO selectLogin(Jeogi_userVO vo) throws Exception {
		return jeogi_userDAO.selectLogin(vo);
	}	
	
}
