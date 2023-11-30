Feature: Searching for product based on name

Background: The system has many products 
	Given that the admin is logged in 
	And these products in the system
		|name|type|price|amount|
|side mirror  | medium | 30 |8 |
| cover | water proof | 25 | 1 | 
| cover | not water proof  |15| 2 |
| side mirror | small | 20 | 10 |
	And the admin loggs out 
	
	 

	
Scenario: Searching for product by name
Given  the admin is not  logged in
When the user search for the text "side mirror"
Then the product with name " side mirror" is found 


Scenario: Searching  when the admin is logged in 
	Given that the admin is logged in 
	When the user search for the text "cover" 
	Then the product with name "cover" is found