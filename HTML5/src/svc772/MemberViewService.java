package svc772;

import vo772.MemberBean;
import static db772.JdbcUtil.*;
import java.sql.Connection;
import dao772.MemberDAO;

public class MemberViewService {

	public MemberBean getMember(String viewId) {
		Connection conn = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(conn);
		MemberBean member = memberDAO.selectMember(viewId);
		close(conn);
		return member;
	}

}
