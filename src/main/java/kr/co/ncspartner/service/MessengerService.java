
package kr.co.ncspartner.service;

import java.util.List;

import kr.co.ncspartner.vo.ConVO;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.MessengerVO;


public interface MessengerService {

	int insert(MessengerVO vo) throws Exception;
	
	int insertmessage(MessengerVO vo) throws Exception;

	int update(MessengerVO vo) throws Exception;

	int delete(MessengerVO vo) throws Exception;

	MessengerVO select(MessengerVO vo) throws Exception;

	List<?> selectList(MessengerVO vo) throws Exception;
	
	int selectListTotCnt(MessengerVO vo);
	
	String getMs_id(MessengerVO vo) throws Exception;
	
	
	List<?> getChatRooms(MessengerVO vo) throws Exception;
	
	List<?> getChats(MessengerVO vo) throws Exception;
	
}
