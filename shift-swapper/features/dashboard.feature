Feature: display the dashboard page
    As a user
    I want to be able to view all the navigational buttons for employees 
    So that I can access/manage my account, work shifts and calendar

@omniauth_test
Scenario: Show dashboard UI
  Given I am on the dashboard page
  Then I should see "User Profile"
  And I should see "Dining Locations"
  And I should see "Logout"
  And I should see "FAQ & Quick Links"