module SharedExamples

  def click_on_selector(selector)
    find(selector).click
  end

  def form_error_message(error)
    expect(page).to have_selector('p', text: error)
  end

  def press_return_on_element(selector)
    find(selector).native.send_keys(:return)
  end

  def feature_is_enabled?(feature)
    ENV[feature] == 'enabled'
  end

end