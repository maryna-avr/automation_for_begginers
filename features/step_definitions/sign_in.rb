Given('I am on the {string}') do |url|
  visit url
end

When('I fill in email with {string}') do |user_email|
  fill_in('email', with: user_email)
end

When('I click button {string}') do |button_name|
  click_button(button_name)
end

When('I fill in password with {string}') do |user_pwd|
  expect(page).to have_field('password')
  fill_in('password', with: user_pwd)
end

Then('I should see {string}') do |page_title|
  expect(page).to have_text(page_title)
end


