package svc772;

import java.sql.Connection;
import java.util.ArrayList;

import dao772.MemberDAO;

import static db772.JdbcUtil.*;
import vo772.MemberBean;

public class MemberListService {

	public ArrayList<MemberBean> getMemberList() {
		Connection conn = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(conn);
		ArrayList<MemberBean> memberList = memberDAO.selectMemberList();
		return memberList;
	}

}
