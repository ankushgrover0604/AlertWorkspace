Feature: Login Scenarios 

Scenario Outline: login to the application with valid credentials 
	Given User is on Login Page and tries to login with "<valid>" username and "<valid>" password 
	When user enters  "<valid_username>" and  "<valid_password>" and generates a unique access_token 
	Then user is loggedIn "successfully" with status code 200 
	And "success" is "true" 
	Examples: 
		|valid_username|valid_password|	
		|admin	 	   |Alert1234	  |	
		
Scenario Outline: login to the application with blank credentials 
	Given User is on Login Page and tries to login with "<blank>" username and "<blank>" password 
	When user enters  "<blank_username>" and  "<blank_password>" and generates a unique access_token 
	Then user is loggedIn "failed" with status code 500
	And "success" is "false" 
	
	Examples: 
		|blank_username|blank_password|	
		| 		 	   |		  	  |	  
		
		
Scenario Outline: login to the application with blank password 
	Given User is on Login Page and tries to login with "<valid>" username and "<blank>" password 
	When user enters  "<username>" and  "<blank_password>" and generates a unique access_token 
	Then user is loggedIn "failed" with status code 500
	And "success" is "false" 
	
	Examples: 
		|username|blank_password|	
		|admin 	 |		        |	 
		
		
Scenario Outline: login to the application with blank username 
	Given User is on Login Page and tries to login with "<valid>" username and "<blank>" password 
	When user enters  "<blank_username>" and  "<password>" and generates a unique access_token 
	Then user is loggedIn "failed" with status code 500
	And "success" is "false" 
	
	Examples: 
		|blank_username|password |	
		| 	 	   	   |Alert1234|	
		
		
Scenario Outline: login to the application with invalid username and password
	Given User is on Login Page and tries to login with "<Invalid>" username and "<Invalid>" password 
	When user enters  "<Invalid_username>" and  "<Invalid_password>" and generates a unique access_token 
	Then user is loggedIn "failed" with status code 500
	And "success" is "false" 
	
	Examples: 
		|Invalid_username|Invalid_password|	
		|Invalid_username|Invalid_password|
		
		
Scenario Outline: login to the application with valid username and Invalidpassword
	Given User is on Login Page and tries to login with "<valid>" username and "<Invalid>" password 
	When user enters  "<valid_username>" and  "<Invalid_password>" and generates a unique access_token 
	Then user is loggedIn "failed" with status code 500
	And "success" is "false" 
	
	Examples: 
		|valid_username|Invalid_password|	
		|admin		   |Invalid_password|
		
		
Scenario Outline: login to the application with Invalid username and valid password
	Given User is on Login Page and tries to login with "<invalid>" username and "<Invalid>" password 
	When user enters  "<Invalid_username>" and  "<valid_password>" and generates a unique access_token 
	Then user is loggedIn "failed" with status code 500
	And "success" is "false" 
	
	Examples: 
		|Invalid_username|valid_password|	
		|Invalid_username|Alert1234	    |
		