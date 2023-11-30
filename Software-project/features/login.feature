Feature: login
	Description:you can login if the username and password is true
Scenario: login
	Given the username is "Abr"
	And the password is "Ab123"
	Then login is done 
	And welcome 
	
Scenario:  Wrong login wrong password
	Given the username is "Abr"
	And the password is "Ab133"
	Then login failed 
	And sorry
	
	Scenario:  Wrong login wrong username
	Given the username is "AR"
	And the password is "Ab123"
	Then login failed 
	And sorry
	
	Scenario:  Wrong login wrong usernam and wrong pass
	Given the username is "Ab"
	And the password is "Ab133"
	Then login failed 
	And sorry	


