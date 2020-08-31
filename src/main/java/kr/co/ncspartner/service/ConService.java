
package kr.co.ncspartner.service;


import java.util.List;
import java.util.Map;

import kr.co.ncspartner.vo.ConVO;


public interface ConService {

	int insert(ConVO vo) throws Exception;

	int update(ConVO vo) throws Exception;

	int delete(ConVO vo) throws Exception;

	ConVO select(ConVO vo) throws Exception;

	List<?> selectList(ConVO vo) throws Exception;

	int selectListTotCnt(ConVO vo);
	
	List<Map<String, Object>> selectOneWeekDay() throws Exception;
	
}
