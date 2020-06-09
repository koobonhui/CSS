package action772;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc772.MemberViewService;
import vo772.ActionForward;
import vo772.MemberBean;

public class MemberViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
   		String id = (String)session.getAttribute("id");
   		
   		ActionForward forward = null;
   		if(id == null) {
   			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("memberLogin.dom");
   		} else if(!id.equals("admin")) {
   			response.setContentType("text/html;charset=UTF-8");
	   		PrintWriter out = response.getWriter();
	   		out.println("<script>");
	   		out.println("alert('관리자가 아닙니다.');");
	   		out.println("location.href='memberLogin.dom'");
	   		out.println("</script>");
   		} else {
	   		forward = new ActionForward();
	   		String viewId = request.getParameter("id");
	   		MemberViewService memberViewService = new MemberViewService();
	   		MemberBean member = memberViewService.getMember(viewId);
	   		request.setAttribute("member", member);
	   		forward.setPath("member_info772.jsp");
   		}
   		return forward;
	}

}
