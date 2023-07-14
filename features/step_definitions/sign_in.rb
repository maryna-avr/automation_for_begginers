Given('I am on the {string}') do |string|
  visit string
end

When('I fill in email with {string}') do |user_email|
  fill_in('email', with: user_email)
end

When('I click button {string}') do |button_name|
  click_button(button_name)
end

When('I fill in password with {string}') do |user_pwd|
  fill_in('password', with: user_pwd)
end

Then('I should see {string}') do |page_title|
  expect(page).to have_text(page_title)
end