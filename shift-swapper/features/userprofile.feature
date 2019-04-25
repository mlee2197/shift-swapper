Feature: display the user profile page
    As a user
    I want to be able to view and edit my name, email, and password or my account
    So that I can manage my profile information

Scenario:
    Given I am on the user profile page
    Then I should see "Name"
    And I should see "E-Mail Address"
    And I should see "Dining Hall"
    And I should see ""