require 'rails_helper'

RSpec.describe 'show page' do
  before do
    @user = create_user
    log_in @user
  end
  it "should display name" do
    expect(current_path).to eq(user_path(@user.id))
    expect(page).to have_text(@user.name)
  end
  it "should show all secrets you've created with likes" do
    expect(page).to have_text('Secrets')
    create_secret('show secret')
    expect(page).to have_text('show secret')
    expect(page).to have_link('Delete')
    expect(page).to have_text('Likes: 0')
  end
  it "should show all secrets you've liked with likes" do
    expect(page).to have_text('Secrets Liked')
    User.find(@user.id).secrets.create(content: 'liked this?')
    secret = Secret.last
    Like.create(user: @user, secret: secret)
    visit user_path(@user)
    expect(page).to have_text(secret.content)
    expect(page).to have_text('Likes: 1')
  end
  it "should show link to all secrets" do
    expect(page).to have_link('All Secrets')
  end


end
