require 'rails_helper'

RSpec.describe LikesController, type: :controller do
  before do
    @user = create_user
  end

  describe "when not logged in" do
    before do
      session[:user_id] = nil
    end
    it "cannot like a secret" do
      post :create
      expect(response).to redirect_to('/sessions/new')
    end
    it "cannot unlike a secret" do
      delete :destroy
      expect(response).to redirect_to('/sessions/new')
    end
  end

  describe "when signed in as the wrong user" do
    before do
      @wrong_user = create_user 'julius', 'julius@lakers.com'
      session[:user_id] = @wrong_user.id
      @secret = @user.secrets.create(content: 'Users Sceret')
      @wrong_user_secret = @wrong_user.secrets.create(content: 'Wrong Users Sceret')
    end

    it "can destroy their own (wrong user) like" do
      expect(@secret.likes.count).to eq(0)

      post :create, secret_id: @secret.id
      expect(@secret.likes.count).to eq(1)
      delete :destroy, secret_id: @secret.id
      expect(@secret.likes.count).to eq(0)
    end

    it "cannot like a secret they've already liked" do
      expect(@secret.likes.count).to eq(0)
      post :create, secret_id: @secret.id
      expect(@secret.likes.count).to eq(1)
      post :create, secret_id: @secret.id
      expect(@secret.likes.count).to eq(1)
    end
  end
end
