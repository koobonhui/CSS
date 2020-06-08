package svc772;

import java.sql.Connection;
import static db772.JdbcUtil.*;
import dao772.MemberDAO;
import vo772.MemberBean;

public class MemberLoginService {

	public boolean login(MemberBean member) {
		Connection conn = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(conn);
		boolean loginResult = false;
		String loginId = memberDAO.selectLoginId(member);
		if(loginId != null){
			loginResult = true;
		}
		close(conn);
		return loginResult;
	}

}
