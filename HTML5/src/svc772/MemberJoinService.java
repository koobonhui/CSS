package svc772;

import vo772.MemberBean;
import static db772.JdbcUtil.*;

import java.sql.Connection;

import dao772.MemberDAO;

public class MemberJoinService {

	public boolean joinMember(MemberBean member) {
		boolean joinSuccess = false;
		MemberDAO memberDAO = MemberDAO.getInstance();
		Connection conn = getConnection();
		memberDAO.setConnection(conn);
		int insertCount = memberDAO.insertMember(member);
		if(insertCount > 0) {
			joinSuccess = true;
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return joinSuccess;
	}

}
