package action689;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc689.DogCartAddService;
import vo689.ActionForward;
import vo689.Dog;

public class DogCartAddAction implements Action689 {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		DogCartAddService dogCartAddService = new DogCartAddService();
		int id = Integer.parseInt(request.getParameter("id"));
		Dog cartDog = dogCartAddService.getCartDog(id);
		dogCartAddService.addCart(request, cartDog);
		ActionForward forward = new ActionForward("dogCartList.dog", true);
		return forward;
	}

}
