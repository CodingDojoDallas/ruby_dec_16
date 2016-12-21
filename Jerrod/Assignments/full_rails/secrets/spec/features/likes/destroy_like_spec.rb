require 'rails_helper'

RSpec.describe "clicking unlike" do
  before do
    @user = create_user
    log_in @user
    User.find(@user.id).secrets.create(content:'mt secret')
    visit secrets_path
    click_button 'Like'
  end
  it "should destroy that like" do
    expect(page).to have_text('Likes: 1')
    expect(page).to have_button('Unlike')
    click_button 'Unlike'
    expect(page).to have_text('Likes: 0')
  end

end
