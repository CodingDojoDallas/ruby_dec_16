require 'rails_helper'

RSpec.describe "Show secrets page" do
  before do
    @user = create_user
    log_in @user
    @sec1 = User.find(@user.id).secrets.create(content:'mt secret')
    visit secrets_path
  end
  it "should show all secrets with likes and delete" do
    @sec2 = User.last.secrets.create(content:'other secret')
    visit secrets_path
    expect(page).to have_text(@sec1.content)
    expect(page).to have_text(@sec2.content)
    expect(page).to have_link('Delete')
    expect(page).to have_text('Likes: 0')
  end
  it "should show a like button that you can use" do
    expect(page).to have_button('Like')
  end
  it "should have an unlike button if you've already liked it" do
    click_button 'Like'
    expect(page).to have_button('Unlike')
  end


end
