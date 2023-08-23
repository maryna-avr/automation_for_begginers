Feature: Add assets

  In order to see flash notification
  A Billing admin
  Should be able to add asset

  Background: Authorized User
    Given I am on the 'https://aqa-course.economicon.net/sign-in'
    When I fill in email with 'avramenkomaryna2@gmail.com'
    When I fill in password with 'f6AgCRnCmhnG9Sm'
    When I click button 'Sign in'

  Scenario: Add asset
    When I click the button 'Add new asset'
    When I fill in asset title with 'New asset'
    When I choose option 'Laptops' from the Category dropdown
    When I fill in description with 'Lorem ipsum'
    When I click the button 'Submit'
    Then I should see a notification confirming the successful addition of the asset 'New asset'
