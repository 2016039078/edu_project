
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.Jeogi_userDAO;
import kr.co.ncspartner.dao.LikelistDAO;
import kr.co.ncspartner.service.Jeogi_userService;
import kr.co.ncspartner.service.LikelistService;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.Jeogi_userVO;
import kr.co.ncspartner.vo.LikelistVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


@Service("LikelistService")
public class LikelistServiceImpl extends EgovAbstractServiceImpl implements LikelistService {

	private static final Logger LOGGER = LoggerFactory.getLogger(LikelistServiceImpl.class);
	
	
	@Resource(name = "likelistDAO")
	private LikelistDAO likelistDAO;

	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(LikelistVO vo) throws Exception {
		return likelistDAO.insert(vo);
	}

	@Override
	public LikelistVO select(LikelistVO vo) throws Exception {
		return likelistDAO.select(vo);
	}
	
	@Override
	public List<?> selectList(LikelistVO vo) throws Exception {
		return likelistDAO.selectList(vo);
	}

	@Override
	public int delete(LikelistVO vo) throws Exception {
		return likelistDAO.delete(vo);
	}
	
//	@Override
//	public void deleteAll(String user_id) {
//		likelistDAO.deleteAll(user_id);
//	}


}
