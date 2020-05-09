package files;

import pojo.LoginPojo;

public class payload {	
		

	
		
		public static LoginPojo authToken(String username, String password)
		
		{
			LoginPojo lp = new LoginPojo();
			lp.setUsername(username);
			lp.setPassword(password);
			return lp;
				
		}		
	}


