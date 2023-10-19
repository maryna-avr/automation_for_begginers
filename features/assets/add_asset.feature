Feature: Add assets

  In order to see flash notification
  A Billing admin
  Should be able to add asset

  Background: Authorized User
    Given I am on the 'https://aqa-course.economicon.net/sign-in'
    When I fill in email with 'avramenkomaryna2@gmail.com'
    When I fill in password with 'f6AgCRnCmhnG9Sm'
    When I click the button 'Sign in'

  @asset
  Scenario: Add asset
    When I click the button 'Add new asset'
    When I fill in asset title
    When I choose option 'Laptops' from the Category dropdown
    When I fill in description with 'Lorem ipsum'
    When I click the button 'Submit'
    Then I should see a notification confirming the successful addition of the asset 'New asset'

#  @asset @legacy
#  Scenario Outline: Add assets
#    When I click the button 'Add new asset'
#    When I fill in asset title with '<asset_name>'
#    When I choose option '<category>' from the Category dropdown
#    When I fill in description with '<description>'
#    When I click the button 'Submit'
#    Then I should see a notification confirming the successful addition of the asset '<asset_name>'
#
#    Examples:
#      | asset_name  | category | description   |
#      | Asset 1     | Laptops  | Lorem ipsum 1 |
#      | Asset 2     | Tables   | Lorem ipsum 2 |

#  Scenario: Example - within
#    When I check checkbox

#  Scenario: First/last/index in the table
#    When I click on the last 3 dot menu
#    When I click on the first 3 dot menu

#  Scenario: Check/uncheck
#    When I check first checkbox

#  Scenario: Find second asset name, number of assets
#    When I found second asset name
#    When I find the number of assets

#  Scenario: Get asset name from the input
#    When I click the button 'Add new asset'
#    When I fill in asset title with 'Grogu'
#    When I get asset name
#
#  Scenario: Choose option from the dropdown
#    When I click on the first 3 dot menu
#    When I choose 'Delete' option from the dropdown
#    When I click the button 'delete'
#    Then I should see delete asset notification
