
package kr.co.ncspartner.service;

import java.util.List;

import kr.co.ncspartner.vo.ConVO;
import kr.co.ncspartner.vo.JeogiVO;


public interface JeogiService {

	int insert(JeogiVO vo) throws Exception;

	int update(JeogiVO vo) throws Exception;
	
	int updateInterest(JeogiVO vo) throws Exception;

	int delete(JeogiVO vo) throws Exception;

	JeogiVO select(JeogiVO vo) throws Exception;
	
	JeogiVO select2(JeogiVO vo) throws Exception;
	
	List<?> selectList(JeogiVO vo) throws Exception;
	
	List<?> selectListHosting(JeogiVO vo) throws Exception;
	
	List<?> selectListbestrooms(JeogiVO vo) throws Exception;
	
	List<?> selectListRecentlyUpdate(JeogiVO vo) throws Exception;
	
	List<?> selectsearchList(JeogiVO vo) throws Exception;
	
	int selectListTotCnt(JeogiVO vo);
	
	JeogiVO selectmaxr_id(JeogiVO vo) throws Exception;
	
}
