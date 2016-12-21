RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups

  def create_user (name='samson', email='ds@yahoo.com', password='password', password_confirmation='password')
    User.create(name: name, email: email, password: password, password_confirmation: password_confirmation)
  end

  def log_in(user, password='password', email='email')
    visit new_session_path
    if email == 'email'
      fill_in 'email', with: user.email
    else
      fill_in 'email', with: email
    end
    fill_in 'password', with: password
    click_button 'Log In'
  end

  def create_secret(secret='secret method')
    @user = create_user
    log_in @user
    fill_in 'secret_content', with: secret
    click_button 'Create Secret'
    secret
  end



  RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end


end
