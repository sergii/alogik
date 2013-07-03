require 'spec_helper'

feature 'User creates account' do
  scenario 'with valid data' do
    visit '/users/new'

    fill_in 'Email', with: 'email@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign up'

    page.should have_text 'Congratulations! Account was successfully created!'
  end

  scenario 'with invalid data' do
    visit '/users/new'

    fill_in 'Email', with: 'example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign up'

    page.should have_text 'Something was wrong'
  end
end