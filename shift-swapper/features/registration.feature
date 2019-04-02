Feature: display the user registration page
  
  As a User
  I want to see the user registration page
  So that I can fill in my required details and register my account
  
Scenario: Show user registation page
  Given I am on the login page
  When I click "Register New Account"
  Then I should see "New User Registration" 
  And I should see "First Name"
  And I should see "Last Name"
  And I should see "Username"
  And I should see "Password"
  And I should see "E-Mail Address"
  And I should see "Dining Hall"

Scenario: Register new user
  Given I am on the registration page
  When I fill in "First Name" with "Michael"
  And I click on the button "Submit & Create Profile"
  