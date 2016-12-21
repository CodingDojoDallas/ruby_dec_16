require 'rails_helper'

RSpec.describe 'create a like' do
  before do
    @user = create_user
    log_in @user
    User.find(@user.id).secrets.create(content:'mt secret')
    visit secrets_path
  end
  it "by clicking the like button" do
    expect(page).to have_text('Likes: 0')
    click_button 'Like'
    expect(page).to have_text('Likes: 1')
  end
end
