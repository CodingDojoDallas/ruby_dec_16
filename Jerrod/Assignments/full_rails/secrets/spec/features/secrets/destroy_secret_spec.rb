require 'rails_helper'

RSpec.describe 'deleting a secret' do
  before do
    @user_main = create_user
    log_in @user_main
    @secret = create_secret
  end
  it "should make it dissapear from users page" do
    expect(page).to have_text(@secret)
    click_link 'Delete'
    expect(current_path).to eq(user_path(@user_main.id))
    expect(page).to_not have_text(@secret)
  end
  it "should make it dissapear from secrets page" do
    visit secrets_path
    expect(page).to have_text(@secret)
    click_link 'Delete'
    expect(current_path).to eq(secrets_path)
    expect(page).to_not have_text(@secret)
  end


end
