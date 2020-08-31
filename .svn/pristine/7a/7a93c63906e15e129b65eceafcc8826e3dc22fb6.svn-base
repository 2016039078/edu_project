
package kr.co.ncspartner.dao;

import java.util.List;

import javax.inject.Inject;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.LikelistVO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("likelistDAO")
public class LikelistDAO extends EgovAbstractMapper {
	
	public int insert(LikelistVO vo) {
		return update("likelist.insert", vo);
	}//찜목록 추가
	
	public LikelistVO select(LikelistVO vo) throws Exception {
		return (LikelistVO) selectOne("likelist.select", vo);
	}
	
	public List<?> selectList(LikelistVO vo) throws Exception {
		return list("likelist.selectList", vo);
	}//찜목록
	
	public int delete(LikelistVO vo) throws Exception {
		return update("likelist.delete", vo);
	}//찜목록 개별 삭제
	
//	public int deleteAll(String user_id) {
//		return sqlSession.delete("likelist.deleteAll", user_id);
//	}//찜목록 전체 비우기


	
}
