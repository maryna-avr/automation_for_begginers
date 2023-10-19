# include SharedExamples
#
# Given('I am on the {string}') do |url|
#   visit url
# end
#
# When('I fill in email with {string}') do |user_email|
#   sleep 1
#   fill_in('email', with: user_email)
# end
#
# When('I fill in password with {string}') do |user_pwd|
#   expect(page).to have_field('password')
#   fill_in('password', with: user_pwd)
# end
#
# Then('I should see {string}') do |page_title|
#   expect(page).to have_text(page_title)
# end
#
# When('I click the button {string}') do |button_name|
#   click_button(button_name)
# end
#
# When('I fill in asset title') do
#   fill_in('label', with: Faker::Creature::Cat.name)
#   sleep 10
# end

# When('I fill in asset title') do
#   if feature_is_enabled?('TEST_FF')
#     fill_in('label', with: 'test 1111')
#     sleep 10
#   else
#     fill_in('label', with: 'test 2222')
#     sleep 10
#   end
# end