Feature: Login
  In order to manage the employee records
  As a Admin
  I want to access the Orange HRM Portal

  Scenario: Valid Credential
    Given I have browser with Orange hrm application.
    When I enter username as 'Admin'
    And I enter password as 'admin123'
    And I click on login
    Then I should get access to  the portal with page content as 'MyInfo'

  Scenario Outline: Invalid Credential
    Given I have browser with Orange hrm application.
    When I enter username as '<username>'
    And I enter password as '<password>'
    And I click on login
    Then I should get error message as 'Invalid Credentials'

    Examples: 
      | username | password |
      | bala     | bala123  |
      | hr       | hr123    |
