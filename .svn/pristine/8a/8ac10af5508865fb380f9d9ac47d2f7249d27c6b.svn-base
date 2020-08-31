
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.ReviewDAO;
import kr.co.ncspartner.service.ReviewService;
import kr.co.ncspartner.vo.ReviewVO;


import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("reviewService")
public class ReviewServiceImpl extends EgovAbstractServiceImpl implements ReviewService {

	private static final Logger LOGGER = LoggerFactory.getLogger(ReviewServiceImpl.class);

	@Resource(name = "reviewDAO")
	private ReviewDAO reviewDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(ReviewVO vo) throws Exception {
		LOGGER.debug(vo.toString());

		LOGGER.debug(vo.toString());

		int cnt = reviewDAO.insert(vo);
		return cnt;
	}

	@Override
	public int update(ReviewVO vo) throws Exception {
		return reviewDAO.update(vo);
	}

	@Override
	public int delete(ReviewVO vo) throws Exception {
		return reviewDAO.delete(vo);
	}


	@Override
	public ReviewVO select(ReviewVO vo) throws Exception {
		return reviewDAO.select(vo);
	}
	
	@Override
	public ReviewVO scoreAvg(ReviewVO vo) throws Exception {
		return reviewDAO.scoreAvg(vo);
	}
	
	@Override
	public List<?> selectList(ReviewVO vo) throws Exception {
		return reviewDAO.selectList(vo);
	}
	
	@Override
	public List<?> 	selectListhighscore(ReviewVO vo) throws Exception {
		return reviewDAO.selectListhighscore(vo);
	}

	@Override
	public int selectListTotCnt(ReviewVO vo) {
		return reviewDAO.selectListTotCnt(vo);
	}

}
