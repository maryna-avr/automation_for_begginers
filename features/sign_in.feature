Feature: Sign in
  Scenario: Sign in
    Given I am on the 'https://economicon.net/find-company'
    When I fill in email with 'avramenkomaryna2@gmail.com'
    When I click button 'Find'
    When I fill in email with 'avramenkomaryna2@gmail.com'
    When I fill in password with 'f6AgCRnCmhnG9Sm'
    When I click button 'Sign in'
    Then I should see 'AQA course'
