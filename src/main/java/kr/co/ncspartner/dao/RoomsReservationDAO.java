
package kr.co.ncspartner.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.ReviewVO;
import kr.co.ncspartner.vo.RoomsReservationVO;

import org.springframework.stereotype.Repository;

@Repository("roomsReservationDAO")
public class RoomsReservationDAO extends EgovAbstractMapper {

	public int insert(RoomsReservationVO vo) throws Exception {
		return update("roomsReservation.insert", vo);
	}

	public int update(RoomsReservationVO vo) throws Exception {
		return update("roomsReservation.update", vo);
	}
	
	public int hostupdate(RoomsReservationVO vo) throws Exception {
		return update("roomsReservation.hostupdate", vo);
	}
	
	public int lastdatedelete(RoomsReservationVO vo) throws Exception {
		return update("roomsReservation.lastdatedelete", vo);
	}
	
	public int delete(RoomsReservationVO vo) throws Exception {
		return update("roomsReservation.delete", vo);
	}
	
	public RoomsReservationVO select(RoomsReservationVO vo) throws Exception {
		return (RoomsReservationVO) selectOne("roomsReservation.select", vo);
	}
	
	public RoomsReservationVO selectCountReserved(RoomsReservationVO vo) throws Exception {
		return (RoomsReservationVO) selectOne("roomsReservation.selectCountReserved", vo);
	}
	
	public List<?> selectList(RoomsReservationVO vo) throws Exception {
		return list("roomsReservation.selectList", vo);
	}
	
	public List<?> reservedselect(RoomsReservationVO vo) throws Exception {
		return list("roomsReservation.reservedselect", vo);
	}
	
	public List<?> lastreservedselect(RoomsReservationVO vo) throws Exception {
		return list("roomsReservation.lastreservedselect", vo);
	}
	
	
	public List<?> selectUpdateRoomreservation(RoomsReservationVO vo) throws Exception {
		return list("roomsReservation.selectUpdateRoomreservation", vo);
	}

	public int selectListTotCnt(RoomsReservationVO vo) {
		return (Integer) selectOne("roomsReservation.selectListTotCnt", vo);
	}
	
	public String getR_id(RoomsReservationVO vo) throws Exception {
		return (String) selectOne("roomsReservation.getR_id", vo);
	}

}
