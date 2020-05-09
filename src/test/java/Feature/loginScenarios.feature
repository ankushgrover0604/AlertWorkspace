Feature: Login Scenarios

Scenario: login to the application with valid credentials
	Given User is on Login Page and has valid "access_token"
	When user enters "username" and "Password"
	Then user is  loggedIn successfully with status code 200
	And "success" is "true"
	
	
#Given path 'api/auth/token'
#And request login
#When method post
#Then status 200
#And match response contains {'success':true}
#
#* def token = response.data.access_token
#
#Given path 'api/getnewids'
#And header Authorization = 'Bearer ' + token
#When method get
#Then status 200
#And match response contains {'success':true}
#
#Scenario: login to the application with blank username and password
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_blank
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'User does not exist'}
#
#Scenario: login to the application with blank password
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_blank_password
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'Invalid username or password'}
#
#Scenario: login to the application with blank username
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_blank_username
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'User does not exist'}
#
#Scenario: login to the application with invalid credentials
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_invalid
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'User does not exist'}
#
#Scenario: login to the application with invalid password
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_invalid_password
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'Invalid username or password'}
#
#Scenario: login to the application with invalid username
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_invalid_username
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'User does not exist'}
#
#Scenario: login to the application with long password
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_long_password
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'Invalid username or password'}
#
#Scenario: login to the application with long username
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_long_username
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'User does not exist'}
#
#Scenario: login to the application with long username and password
#
#* def data = read('classpath:testData/logindata.json')
#Given path 'api/auth/token'
#And request data.login_long_username_password
#When method post
#Then status 500
#And match response.messages[0] contains {messageDisplayText: 'User does not exist'}
#
#Scenario: login to the application with invalid token
#
#Given path 'api/getnewids'
#And header Authorization = 'Bearer ' + 'invalidtoken'
#When method get
#Then status 403
#And match response == 'ERR_INVALID_SIGNATURE_OR_CLAIM'