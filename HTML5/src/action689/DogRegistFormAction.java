package action689;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo689.ActionForward;

public class DogRegistFormAction implements Action689 {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward("dogRegistForm.jsp", false);
		return forward;
	}

}
