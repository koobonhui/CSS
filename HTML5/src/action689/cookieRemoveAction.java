package action689;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo689.ActionForward;

public class cookieRemoveAction implements Action689 {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			if(cookie.getName().startsWith("today")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);				
			}
		}
		ActionForward forward = new ActionForward("dogList.dog", true);
		return forward;
	}

}
