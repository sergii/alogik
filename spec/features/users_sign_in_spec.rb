require 'spec_helper'

feature 'User signs in' do
  scenario 'with valid credentials' do
    User.create email: 'email@example.com', password: 'password'

    visit '/user_session/new'

    fill_in 'Email', with: 'email@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign in'

    page.should have_text 'You have successfully signed in'
  end

  scenario 'with invalid credentials' do
    User.create email: 'email@example.com', password: 'password'

    visit '/user_session/new'

    fill_in 'Email', with: 'email@example.com'
    fill_in 'Password', with: 'invalid-password'
    click_button 'Sign in'

    page.should have_text 'Please sign in'
  end
end