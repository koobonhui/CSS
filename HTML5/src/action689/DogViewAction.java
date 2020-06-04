package action689;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc689.DogViewService;
import vo689.ActionForward;
import vo689.Dog;

public class DogViewAction implements Action689 {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		DogViewService dogViewService = new DogViewService();
		int id = Integer.parseInt(request.getParameter("id"));
		Dog dog = dogViewService.getDogView(id);
		request.setAttribute("dog", dog);
		Cookie todayImageCookie = new Cookie("today" + id, dog.getImage());
		todayImageCookie.setMaxAge(60 * 60 * 24);
		response.addCookie(todayImageCookie);
		ActionForward forward = new ActionForward("dogView.jsp", false);
		return forward;
	}

}
