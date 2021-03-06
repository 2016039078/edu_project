
package kr.co.ncspartner.service.impl;

import java.util.List;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.co.ncspartner.dao.RoomsReservationDAO;
import kr.co.ncspartner.dao.SampleDAO;
import kr.co.ncspartner.service.RoomsReservationService;
import kr.co.ncspartner.service.SampleService;
import kr.co.ncspartner.vo.ReviewVO;
import kr.co.ncspartner.vo.RoomsReservationVO;
import kr.co.ncspartner.vo.SampleVO;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service("roomsReservationService")
public class RoomsReservationServiceImpl extends EgovAbstractServiceImpl implements RoomsReservationService {

	private static final Logger LOGGER = LoggerFactory.getLogger(RoomsReservationServiceImpl.class);

	@Resource(name = "roomsReservationDAO")
	private RoomsReservationDAO roomsReservationDAO;


	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	@Override
	public int insert(RoomsReservationVO vo) throws Exception {
		LOGGER.debug(vo.toString());

		LOGGER.debug(vo.toString());

		int cnt = roomsReservationDAO.insert(vo);
		return cnt;
	}
	
	@Override
	public int update(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.update(vo);
	}
	
	@Override
	public int hostupdate(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.hostupdate(vo);
	}

	@Override
	public int delete(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.delete(vo);
	}
		
	@Override
	public int lastdatedelete(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.lastdatedelete(vo);
	}

	@Override
	public RoomsReservationVO selectCountReserved(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.selectCountReserved(vo);
	}
	
	@Override
	public RoomsReservationVO select(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.select(vo);
	}

	@Override
	public List<?> selectList(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.selectList(vo);
	}
	
	@Override
	public List<?> reservedselect(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.reservedselect(vo);
	}
	
	@Override
	public List<?> lastreservedselect(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.lastreservedselect(vo);
	}
	
	@Override
	public List<?> selectUpdateRoomreservation(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.selectUpdateRoomreservation(vo);
	}

	@Override
	public int selectListTotCnt(RoomsReservationVO vo) {
		return roomsReservationDAO.selectListTotCnt(vo);
	}
	
	
	
	@Override
	public String getR_id(RoomsReservationVO vo) throws Exception {
		return roomsReservationDAO.getR_id(vo);
	}

	

}
