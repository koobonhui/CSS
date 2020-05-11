package com.test.jsp;
import javax.mail.*;

public class GoogleAuthentication extends Authenticator{
	PasswordAuthentication passAuth;
	
	public GoogleAuthentication() {
		passAuth = new PasswordAuthentication("koobonhui.dev", "ydnonekrwphfpzjq");
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return passAuth;
	}
}
