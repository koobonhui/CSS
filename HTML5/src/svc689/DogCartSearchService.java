package svc689;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.graalvm.compiler.asm.amd64.AMD64Assembler.SSEOp;

import vo689.Cart;

public class DogCartSearchService {

	public ArrayList<Cart> getCartSearchList(int startMoney, int endMoney, HttpServletRequest request) {
		HttpSession session = request.getSession();
		ArrayList<Cart> oldCartList = (ArrayList<Cart>)session.getAttribute("cartList");
		ArrayList<Cart> cartList = new ArrayList<Cart>();
		
		for(int i = 0; i < oldCartList.size(); i++) {
			if(oldCartList.get(i).getPrice() >= startMoney && oldCartList.get(i).getPrice() <= endMoney) {
				cartList.add(oldCartList.get(i));
			}
		}
		
		return cartList;
	}

}
