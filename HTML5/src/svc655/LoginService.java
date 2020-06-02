package svc655;
import static db655.JdbcUtil.*;
import java.sql.Connection;

import dao655.LoginDAO;
import vo655.Member;

public class LoginService {

	public Member getLoginMember(String id, String passwd) {
		LoginDAO loginDAO = LoginDAO.getInstance();
		Connection conn = getConnection();
		loginDAO.setConnection(conn);
		Member loginMember = loginDAO.selectLoginMember(id, passwd);
		close(conn);
		return loginMember;
	}

}
