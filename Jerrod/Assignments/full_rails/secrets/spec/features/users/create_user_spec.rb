require 'rails_helper'

RSpec.describe 'creating user' do
  before do
    visit new_user_path
  end
  it "should create new user and redirect to profile page" do
    fill_in 'Name', with: 'Stark'
    fill_in 'Email', with: 'ironman@gmail.com'
    fill_in 'Password', with: 'Password'
    fill_in 'Password confirmation', with: 'Password'
    click_button 'Create User'
    last = User.last
    expect(current_path).to eq(user_path(last.id))
  end
  it "shows validations without proper credential" do
    click_button 'Create User'
    expect(current_path).to eq(new_user_path)
    expect(page).to have_text('invalid')
  end

end
