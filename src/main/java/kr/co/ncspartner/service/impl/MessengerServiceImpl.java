
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.JeogiDAO;
import kr.co.ncspartner.dao.MessengerDAO;
import kr.co.ncspartner.dao.SampleDAO;
import kr.co.ncspartner.service.JeogiService;
import kr.co.ncspartner.service.MessengerService;
import kr.co.ncspartner.service.SampleService;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.MessengerVO;
import kr.co.ncspartner.vo.SampleVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("messengerService")
public class MessengerServiceImpl extends EgovAbstractServiceImpl implements MessengerService {

	private static final Logger LOGGER = LoggerFactory.getLogger(MessengerServiceImpl.class);

	@Resource(name = "messengerDAO")
	private MessengerDAO messengerDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(MessengerVO vo) throws Exception {
		
		int cnt = messengerDAO.insert(vo);
		return cnt;
	}
	@Override
	public int insertmessage(MessengerVO vo) throws Exception {
		
		int cnt = messengerDAO.insertmessage(vo);
		return cnt;
	}
	@Override
	public int update(MessengerVO vo) throws Exception {
		return messengerDAO.update(vo);
	}
	@Override
	public int delete(MessengerVO vo) throws Exception {
		return messengerDAO.delete(vo);
	}


	@Override
	public MessengerVO select(MessengerVO vo) throws Exception {
		return messengerDAO.select(vo);
	}

	@Override
	public List<?> selectList(MessengerVO vo) throws Exception {
		return messengerDAO.selectList(vo);
	}
	
	
	@Override
	public int selectListTotCnt(MessengerVO vo) {
		return messengerDAO.selectListTotCnt(vo);
	}
	
	
	
	@Override
	public String getMs_id(MessengerVO vo) throws Exception {
		return messengerDAO.getMs_id(vo);
	}
	
	
	@Override
	public List<?> getChatRooms(MessengerVO vo) throws Exception {
		return messengerDAO.getChatRooms(vo);
	}
	
	
	@Override
	public List<?> getChats(MessengerVO vo) throws Exception {
		return messengerDAO.getChats(vo);
	}
	

}
