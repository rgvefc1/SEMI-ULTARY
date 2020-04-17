package trust.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import member.model.vo.Member;
import member.model.vo.Pet;
import trust.model.dao.MatchingDAO;
import trust.model.vo.TrustPost;


public class MatchingService {

	public int getListCount(Member member, String pet) {
		Connection conn = getConnection();
		int result = new MatchingDAO().getListCount(conn,member,pet);
		close(conn);
		return result;
	}
	
	public ArrayList<Member> serchMember(int currentPage, int memberLimit, Member member, String pet) {
		Connection conn = getConnection();
		
		ArrayList<Member> m = new MatchingDAO().MemberList(conn,currentPage,member,memberLimit,pet);
		close(conn);
		return m;
	}

	public Member DetailView(String memberid) {
		Connection conn = getConnection();
		
		Member m = new MatchingDAO().DetailView(conn,memberid);
		if(m != null) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return m;
	}

	public Pet DetailPet(String memberId) {
		Connection conn =getConnection();
		
		Pet pet = new MatchingDAO().DetailPet(conn,memberId);
		
		if(pet != null) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return pet;
	}

	public Member MemberDetail(String memberid) {
		Connection conn = getConnection();
		
		Member m = new MatchingDAO().MemberDetail(conn,memberid);
		
		if(m != null) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return m;
	}

	public int sendTustpost(TrustPost tp) {
		Connection conn = getConnection();
		
		int result = new MatchingDAO().sendTrustpost(conn,tp);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}




}
