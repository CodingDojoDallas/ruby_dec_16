require 'rails_helper'

RSpec.describe Secret, type: :model do
  before do
    @secret = Secret.new
    @secret.valid?
  end
  it "should have content" do
    expect(@secret.errors[:content].any?).to eq(true)
  end
  it "should have a user references" do
    expect(@secret.errors[:user_id].any?).to eq(true)
  end
end
