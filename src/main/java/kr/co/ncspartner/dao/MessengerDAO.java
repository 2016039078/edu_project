
package kr.co.ncspartner.dao;

import java.util.ArrayList;
import java.util.List;


import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.Jeogi_userVO;
import kr.co.ncspartner.vo.MessengerVO;

import org.springframework.stereotype.Repository;

@Repository("messengerDAO")
public class MessengerDAO extends EgovAbstractMapper {

	
	public int insert(MessengerVO vo) throws Exception {
		return update("messenger.insert", vo);
	}
	
	public int insertmessage(MessengerVO vo) throws Exception {
		return update("messenger.insertmessage", vo);
	}

	public int update(MessengerVO vo) throws Exception {
		return update("messenger.update", vo);
	}

	public int delete(MessengerVO vo) throws Exception {
		return update("messenger.delete", vo);
	}
	
	public MessengerVO select(MessengerVO vo) throws Exception {
		return (MessengerVO) selectOne("messenger.select", vo);
	}
	
	public List<?> selectList(MessengerVO vo) throws Exception {
		return list("messenger.selectList", vo);
	}
	
	public int selectListTotCnt(MessengerVO vo) {
		return (Integer) selectOne("messenger.selectListTotCnt", vo);
	}
	
	
	public String getMs_id(MessengerVO vo) throws Exception {
		return (String) selectOne("messenger.getMs_id", vo);
	}
	
	public List<?> getChatRooms(MessengerVO vo) throws Exception {
		return list("messenger.getChatRooms", vo);
	}
	

	public List<?> getChats(MessengerVO vo) throws Exception {
		return list("messenger.getChats", vo);
	}

}
