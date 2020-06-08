package dao772;
import static db772.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import vo772.MemberBean;

public class MemberDAO {

	private static MemberDAO memberDAO;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private MemberDAO() {
		
	}
	
	public static MemberDAO getInstance() {
		if(memberDAO == null) {
			memberDAO = new MemberDAO();
		}
		return memberDAO;
	}
	
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public String selectLoginId(MemberBean member) {
		String loginId = null;
		String sql="SELECT MEMBER_ID FROM members WHERE MEMBER_ID=? AND MEMBER_PW=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, member.getMember_id());
			pstmt.setString(2, member.getMember_pw());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				loginId = rs.getString("member_id");
			}
		} catch (Exception ex) {
			System.out.println(" 에러: " + ex);			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginId;
	}
	
	public int insertMember(MemberBean member) {
		String sql="INSERT INTO members VALUES (?, ?, ?, ?, ?, ?)";
		int insertCount=0;
		
		try{

			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, member.getMember_id());
			pstmt.setString(2, member.getMember_pw());
			pstmt.setString(3, member.getMember_name());
			pstmt.setInt(4, member.getMember_age());
			pstmt.setString(5, member.getMember_gender());
			pstmt.setString(6, member.getMember_email());
			insertCount = pstmt.executeUpdate();
			
		}catch(Exception ex){
			System.out.println("joinMember 에러: " + ex);			
		}finally{
			close(pstmt);
		}
		
		return insertCount;
	}
	
	public ArrayList<MemberBean> selectMemberList(){
		String sql="SELECT * FROM members";
		ArrayList<MemberBean> memberList = new ArrayList<MemberBean>();
		MemberBean mb = null;
		try{
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				do{
				mb=new MemberBean();
				mb.setMember_id(rs.getString("MEMBER_ID"));
				mb.setMember_pw(rs.getString("MEMBER_PW"));
				mb.setMember_name(rs.getString("MEMBER_NAME"));
				mb.setMember_age(rs.getInt("MEMBER_AGE"));
				mb.setMember_gender(rs.getString("MEMBER_GENDER"));
				mb.setMember_email(rs.getString("MEMBER_EMAIL"));
				memberList.add(mb);
				}while(rs.next());
			}
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		return memberList;
	}
	
	public MemberBean selectMember(String id){
		String sql="SELECT * FROM members WHERE MEMBER_ID=?";
		MemberBean mb = null;
		try{
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
			mb=new MemberBean();
			mb.setMember_id(rs.getString("MEMBER_ID"));
			mb.setMember_pw(rs.getString("MEMBER_PW"));
			mb.setMember_name(rs.getString("MEMBER_NAME"));
			mb.setMember_age(rs.getInt("MEMBER_AGE"));
			mb.setMember_gender(rs.getString("MEMBER_GENDER"));
			mb.setMember_email(rs.getString("MEMBER_EMAIL"));
			}
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		
		return mb;
	}
	public int deleteMember(String id){
		String sql="DELETE MEMBER1 WHERE MEMBER_ID=?";
		int deleteCount = 0;

		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		}catch(Exception ex){
			System.out.println("deleteMember 에러: " + ex);	
		}finally{
			close(pstmt);
		}
		
		return deleteCount;
	}
}
