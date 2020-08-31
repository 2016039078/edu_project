
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.Jeogi_suggestionsDAO;

import kr.co.ncspartner.service.Jeogi_suggestionsService;

import kr.co.ncspartner.vo.Jeogi_suggestionsVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("jeogi_suggestionsService")
public class Jeogi_suggestionsServiceImpl extends EgovAbstractServiceImpl implements Jeogi_suggestionsService {

	private static final Logger LOGGER = LoggerFactory.getLogger(Jeogi_suggestionsServiceImpl.class);

	@Resource(name = "jeogi_suggestionsDAO")
	private Jeogi_suggestionsDAO suggestions;
	

   @Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(Jeogi_suggestionsVO vo) throws Exception {
		LOGGER.debug(vo.toString());

		LOGGER.debug(vo.toString());

		int cnt = suggestions.insert(vo);
		return cnt;
	}


	@Override
	public int update(Jeogi_suggestionsVO vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int delete(Jeogi_suggestionsVO vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Jeogi_suggestionsVO select(Jeogi_suggestionsVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<?> selectList(Jeogi_suggestionsVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int selectListTotCnt(Jeogi_suggestionsVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Jeogi_suggestionsVO selectLogin(Jeogi_suggestionsVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}



}
