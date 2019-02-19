Feature: Sql Automated Checker
  As a student I want to be able to use the Sql Automated Checker

  Scenario: Student button on index page
    Given I am on the index page
    When I click on the student button
    Then I should be navigated to the student login page

  Scenario: Login credentials
    Given I am on the login page
    When I enter valid credentials
    Then I should be navigated to the questions page