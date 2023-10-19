# When('I click the button {string}') do |button_name|
#   click_button(button_name)
# end

When('I fill in asset title with {string}') do |asset_name|
  fill_in('label', with: asset_name)
end

When('I choose option {string} from the Category dropdown') do |category|
  find('#categories').click
  find('.MuiAutocomplete-option', text: category).click
end

When('I fill in description with {string}') do |description|
  fill_in('description', with: description)
end

When('I fill in description') do
  fill_in('description', with: Faker::Movies::StarWars.droid )
  sleep 10
end

Then('I should see a notification confirming the successful addition of the asset {string}') do |asset_name|
  expect(page).to have_text('Asset added successfully')
  expect(page).to have_selector('tbody tr', text: asset_name)
end

Then('I should see delete asset notification') do
  expect(page).to have_text('Asset deleted successfully')
end

# without within
# When('I check checkbox') do
#   # find('.custom-checkbox-2').click
#   click_on_selector('.custom-checkbox-2')
# end

# with within
# When('I check checkbox') do
#   within('thead') do
#     find('.custom-checkbox-2').click
#   end
# end

#last item
# When('I click on the last 3 dot menu') do
#   within all('tbody tr').last do
#     find('.btn-menu').click
#     sleep 10
#   end
# end

# # first item
# When('I click on the first 3 dot menu') do
#   first('.btn-menu').click
#   sleep 10
# end

# # index
# When('I click on the last 3 dot menu') do
#   all('.btn-menu')[2].click
#   sleep 10
# end
#
# # not work with custom checkboxes
# When('I check first checkbox') do
#   within('thead') do
#     check('.custom-checkbox-2', allow_label_click: true)
#     uncheck('.custom-checkbox-2', allow_label_click: true)
#   end
# end

# get a text from the table
# When('I found second asset name') do
#   within('.MuiTableBody-root') do
#     asset_name = find('.MuiTableRow-root:nth-child(2) > .MuiTableCell-root:nth-child(3)').text
#     p asset_name
#   end
# end

# get a number of asset in the table
# When('I find the number of assets') do
#   within('.MuiTableBody-root') do
#     assets_count = all('.MuiTableRow-hover').count
#     p assets_count
#   end
# end

# # get a value from th input
# When('I get asset name') do
#   asset_name = first('.focus-violet-input').value
#   p asset_name
# end

# choose option from the dropdown
# When('I choose {string} option from the dropdown') do |option|
#   within('.MuiMenu-list') do
#     find('li', text: option).click
#   end
# end
