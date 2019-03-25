Feature: display the user registration page
  
  As a User
  I want to see the user registration page
  So that I can fill in my required details and register my account
  
Scenario: Show user registation page
  Given I am on the homepage
  When I follow "Register New Account"
  Then I should see "registration" 
  
