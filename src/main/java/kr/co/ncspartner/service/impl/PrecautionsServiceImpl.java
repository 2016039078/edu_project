
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.PrecautionsDAO;
import kr.co.ncspartner.service.PrecautionsService;
import kr.co.ncspartner.vo.PrecautionsVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("precautionsService")
public class PrecautionsServiceImpl extends EgovAbstractServiceImpl implements PrecautionsService {

	private static final Logger LOGGER = LoggerFactory.getLogger(PrecautionsServiceImpl.class);

	@Resource(name = "precautionsDAO")
	private PrecautionsDAO precautionsDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(PrecautionsVO vo) throws Exception {
		LOGGER.debug(vo.toString());

		LOGGER.debug(vo.toString());

		int cnt = precautionsDAO.insert(vo);
		return cnt;
	}

	@Override
	public int update(PrecautionsVO vo) throws Exception {
		return precautionsDAO.update(vo);
	}

	@Override
	public int delete(PrecautionsVO vo) throws Exception {
		return precautionsDAO.delete(vo);
	}


	@Override
	public PrecautionsVO select(PrecautionsVO vo) throws Exception {
		return precautionsDAO.select(vo);
	}

	@Override
	public List<?> selectList(PrecautionsVO vo) throws Exception {
		return precautionsDAO.selectList(vo);
	}

	@Override
	public int selectListTotCnt(PrecautionsVO vo) {
		return precautionsDAO.selectListTotCnt(vo);
	}

}
