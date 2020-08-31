
package kr.co.ncspartner.service;

import java.util.List;

import kr.co.ncspartner.vo.B_gesiVO;


public interface B_gesiService {

	int insert(B_gesiVO vo) throws Exception;

	int update(B_gesiVO vo) throws Exception;
	
	int updateHit(B_gesiVO vo) throws Exception;
	
	int deleteFile(B_gesiVO vo) throws Exception;

	int delete(B_gesiVO vo) throws Exception;

	B_gesiVO select(B_gesiVO vo) throws Exception;

	List<?> selectList(B_gesiVO vo) throws Exception;

	int selectListTotCnt(B_gesiVO vo);

}
