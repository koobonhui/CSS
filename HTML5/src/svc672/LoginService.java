package svc672;
import static db672.JdbcUtil.*;
import java.sql.Connection;

import dao672.LoginDAO;
import vo672.Member;

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
