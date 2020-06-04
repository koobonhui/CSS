package action689;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc689.DogCartListService;
import vo689.ActionForward;
import vo689.Cart;

public class DogCartListAction implements Action689 {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		DogCartListService dogCartListService = new DogCartListService();
		ArrayList<Cart> cartList = dogCartListService.getCartList(request);
		//총금액계산
		int totalMoney = 0;
		int money = 0 ;
		
		if(cartList != null) {
			for (int i = 0; i < cartList.size(); i++) {
				money = cartList.get(i).getPrice() * cartList.get(i).getQty();
				totalMoney += money;
			}
		}

		request.setAttribute("totalMoney", totalMoney);
		request.setAttribute("cartList", cartList);
		ActionForward forward = new ActionForward("dogCartList.jsp", false);
		return forward;
	}

}
