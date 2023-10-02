When('I click the button {string}') do |button_name|
  click_button(button_name)
end

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

Then('I should see a notification confirming the successful addition of the asset {string}') do |asset_name|
  expect(page).to have_text('Asset added successfully')
  expect(page).to have_selector('tbody tr', text: asset_name)
end
