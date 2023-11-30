
Feature: Admin Dashboard:he can add and delete and update Car accessories
 Actor: Admin


Background: 
   Given a list of car accessorices with there price and color and details .
    |100|wheel|100|black|have small selver detalis| 
    |101|car cover|25|red|waterproof|
    
Scenario: A car accessory added succefully
Given that the admin is logged in 
And there is a car accessory  with ID "102" ,name "wheel", price "30", color "black", details "second use" 
Then an accessory whose ID "102" ,name "wheel", price "30", color "black", details "second use"  was added



Scenario: Delete a car accesory
Given that the admain want to delete a car accessory with ID"100" , name "wheel",color "black",details"have selver details|
And admin is logged in 
Then you delete all the data about that accessory 



Scenario: fails to add a car  accessory 
Given that the admin is logged in 
And there is accessory whose ID "102" ,name "wheel", price "30", color "black", details "second use"  was added
Then the accessory  is already exists

Scenario: fails to delete car accessory 
Given that the admain want to delete an accessory with ID "105" ,name "car cover", price "25", color "white", details "not water proof"
And admin is logged in 
Then the car accessory that the admain want to delete not exist

 