package controller672;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc672.LoginService;
import vo672.Member;

@WebServlet("/login672")
public class LoginServlet672 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookieArray = request.getCookies();
		String id = "";
		String passwd = "";
		
		if(cookieArray != null) {
			for(int i = 0; i < cookieArray.length; i++) {
				if(cookieArray[i].getName().equals("id")) {
					id = cookieArray[i].getValue();
				} else if(cookieArray[i].getName().equals("passwd")) {
					passwd = cookieArray[i].getValue();
				}
			}
		}
		
		LoginService loginService = new LoginService();
		Member loginMember = loginService.getLoginMember(id, passwd);
		
		if(loginMember != null){
			RequestDispatcher rd = request.getRequestDispatcher("loginSuccess.jsp");
			request.setAttribute("loginMember", loginMember);
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("loginForm672.jsp");
			rd.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String useCookie = request.getParameter("useCookie");
		LoginService loginService = new LoginService();
		Member loginMember = loginService.getLoginMember(id,passwd);
		
		if(useCookie != null){

			Cookie idCookie = new Cookie("id", id);
			//쿠키를 생성하면 기본 생존기간이 -1이다.
			//브라우저가 실행중일 때는 쿠키가 생존하지만 브라우저를 닫으면
			//쿠키가 사라짐
			idCookie.setMaxAge(60 * 60 * 24);//단위는 초임
			Cookie passwdCookie = new Cookie("passwd", passwd);
			//쿠키를 생성하면 기본 생존기간이 -1이다.
			//브라우저가 실행중일 때는 쿠키가 생존하지만 브라우저를 닫으면
			//쿠키가 사라짐
			passwdCookie.setMaxAge(60 * 60 * 24);//단위는 초임

			//응답에 쿠키 추가
			response.addCookie(idCookie);
			response.addCookie(passwdCookie);
		}
		
		if(loginMember != null){
			RequestDispatcher rd = request.getRequestDispatcher("loginSuccess.jsp");
			request.setAttribute("loginMember", loginMember);
			rd.forward(request, response);
		}
		else{
			Cookie[] cookieArray = request.getCookies();
			
			if(cookieArray != null) {
				for(int i = 0; i < cookieArray.length; i++) {
					if(cookieArray[i].getName().equals("id")) {
						cookieArray[i].setMaxAge(0);
					} else if(cookieArray[i].getName().equals("passwd")) {
						cookieArray[i].setMaxAge(0);
					}
				}
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("loginfail.jsp");
			rd.forward(request, response);
		}
	}

}
