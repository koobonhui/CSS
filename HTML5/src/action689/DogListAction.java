package action689;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc689.DogListService;
import vo689.ActionForward;
import vo689.Dog;

public class DogListAction implements Action689 {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<String> todayImageList = new ArrayList<>();
		Cookie[] cookieArray = request.getCookies();
		
		if(cookieArray != null) {
			for (int i = 0; i < cookieArray.length; i++) {
				if(cookieArray[i].getName().startsWith("today")) {
					todayImageList.add(cookieArray[i].getValue());
				}
			}
		}
		
		DogListService dogListService = new DogListService();
		ArrayList<Dog> dogList = dogListService.getDogList();
		request.setAttribute("dogList", dogList);
		request.setAttribute("todayImageList", todayImageList);
		ActionForward forward = new ActionForward("dogList.jsp", false);
		return forward;
	}

}
