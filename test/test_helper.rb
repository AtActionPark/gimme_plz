ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def log_in_as(user, option = {})
    email = option[:password] || 'user@user.com'
    password = option[:password] || 'password'
    if integration_test?
      post login_path, session: { email:       user.email,
                                  password:    password }
    else
      session[:user_id] = user.id
    end
  end

  private
    # Returns true inside an integration test
    def integration_test?
      defined?(post_via_redirect)
    end

  # Add more helper methods to be used by all tests here...
end

class ActionController::TestCase
  include Devise::TestHelpers    
end