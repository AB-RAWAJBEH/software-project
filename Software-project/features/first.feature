#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature:Regisration

  @tag1
  Scenario: check if the first name uses alphabets
    Given a user is on the registration page 
    When they enter their first name as "Abeer"
    
    Then the first name should be valid 
    
    When they enter their  first name as "Abeer2002"
    Then the first name invalid 
    
    Scenario: check if the last name uses alphabets
    Given a user is on the registration page 
    When they enter their first name as "Rawajbeh"
    
    Then the first name should be valid 
    
    When they enter their  first name as "Rawajbeh2002"
    Then the first name invalid 
    
    
     Scenario: Email address should be in a valid format
    Given a user is on the registration page
    When they enter their email address as "user@example.com"
    Then the email address should be valid

    When they enter their email address as "invalid-email"
    Then the email address should be invalid

    When they enter their email address as "user@.com"
    Then the email address should be invalid

 