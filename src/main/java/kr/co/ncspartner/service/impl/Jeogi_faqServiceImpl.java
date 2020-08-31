
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.Jeogi_faqDAO;
import kr.co.ncspartner.dao.Jeogi_suggestionsDAO;
import kr.co.ncspartner.service.Jeogi_faqService;
import kr.co.ncspartner.service.Jeogi_suggestionsService;
import kr.co.ncspartner.vo.Jeogi_faqVO;
import kr.co.ncspartner.vo.Jeogi_suggestionsVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("jeogi_faqService")
public class Jeogi_faqServiceImpl extends EgovAbstractServiceImpl implements Jeogi_faqService {

	private static final Logger LOGGER = LoggerFactory.getLogger(Jeogi_faqServiceImpl.class);

	@Resource(name = "jeogi_faqDAO")
	private Jeogi_faqDAO faq;
	
	
	

   @Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(Jeogi_faqVO vo) throws Exception {
		
		LOGGER.debug(vo.toString());

		LOGGER.debug(vo.toString());

		int cnt = faq.insert(vo);
		return cnt;
	}


	@Override
	public int update(Jeogi_faqVO vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int delete(Jeogi_faqVO vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Jeogi_faqVO select(Jeogi_faqVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<?> selectList(Jeogi_faqVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int selectListTotCnt(Jeogi_faqVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Jeogi_faqVO selectLogin(Jeogi_faqVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}



}
