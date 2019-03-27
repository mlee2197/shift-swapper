Feature: display the user login page
    As a user
    I should be able to see the login page with options to sign in to my account or register(for new user)
    So that I can login to my account
    
Scenario: Show login page UI
    Given I am on the login page
    Then I should see "Username"
    And I should see "Password"
    And I should see "Sign-in"
    And I should see "Reset Password"
    And I should see "Register New Account"