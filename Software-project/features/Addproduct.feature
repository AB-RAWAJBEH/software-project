Feature: add product
	Description: the admain can add product
	
	

	
	
	
Scenario: add product successfully
	Given that the admin is logged in
	And there is a product with name "cover" , type "water proof " , and the price "25", amount "2"
	When the product is added to the system
	Then the product with name "cover" ,type "water proof " , and the price "25", amount "2" inside the system
	 
	
Scenario: add product and admin is not logged in
    Given that the admin is not logged in
	And there is a product with name "cover" , type "water proof " , and the price "25", amount "2"
	When the product is added to the system
	Then the error message "Failed because admin is not log in" is given