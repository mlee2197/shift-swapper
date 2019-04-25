Feature: display the user login page
    As a user
    I should be able to see the login page with options to sign in to my account or register(for new user)
    So that I can login to my account
    
Scenario: Show login page UI
    Given I am on the login page
    Then I should see "Sign-in with GitHub"
    And I should see "Sign-in with Facebook"