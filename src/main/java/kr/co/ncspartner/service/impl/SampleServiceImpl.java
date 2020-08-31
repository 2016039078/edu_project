
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.SampleDAO;
import kr.co.ncspartner.service.SampleService;
import kr.co.ncspartner.vo.SampleVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("sampleService")
public class SampleServiceImpl extends EgovAbstractServiceImpl implements SampleService {

	private static final Logger LOGGER = LoggerFactory.getLogger(SampleServiceImpl.class);

	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(SampleVO vo) throws Exception {
		LOGGER.debug(vo.toString());

		String id = egovIdGnrService.getNextStringId();
		vo.setId(id);
		LOGGER.debug(vo.toString());

		int cnt = sampleDAO.insert(vo);
		return cnt;
	}

	@Override
	public int update(SampleVO vo) throws Exception {
		return sampleDAO.update(vo);
	}

	@Override
	public int delete(SampleVO vo) throws Exception {
		return sampleDAO.delete(vo);
	}


	@Override
	public SampleVO select(SampleVO vo) throws Exception {
		return sampleDAO.select(vo);
	}

	@Override
	public List<?> selectList(SampleVO vo) throws Exception {
		return sampleDAO.selectList(vo);
	}

	@Override
	public int selectListTotCnt(SampleVO vo) {
		return sampleDAO.selectListTotCnt(vo);
	}

}
