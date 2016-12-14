require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'creating user' do
    it "should create sessions upon successful registration" do
      post :create, user:{name: 'Stark', email: 'ironman@gmail.com', password: 'Password', password_confirmation: 'Password'}
      user = User.last
      expect(session[:id]).to eq(user.id)
      expect(session[:name]).to eq(user.name)
    end
  end

end
