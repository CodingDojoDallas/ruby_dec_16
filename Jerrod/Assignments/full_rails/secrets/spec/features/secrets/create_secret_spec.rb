require 'rails_helper'

RSpec.describe 'creating secrets' do
  before do
    @user = create_user
    log_in @user
  end
  it "should have a form on users page" do
    expect(page).to have_text('New Secret')
    expect(page).to have_button('Create Secret')
  end
  it "sends validations if no content" do
    click_button 'Create Secret'
    expect(page).to have_text("Content can't be blank")
  end
  it "creates secret and shows up on page" do
    fill_in 'secret_content', with: 'first secret'
    click_button 'Create Secret'
    expect(current_path).to eq(user_path(@user.id))
    expect(page).to have_text('first secret')
  end
end
