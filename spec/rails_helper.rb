# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'shoulda-matchers'
require File.join(File.dirname(__FILE__), 'support/valid_attribute')
require File.join(File.dirname(__FILE__), 'support/factory_girl')
require File.join(File.dirname(__FILE__), 'support/omni_auth_test_helper')
require File.join(File.dirname(__FILE__), 'support/authentication_helper')
require 'capybara/rspec'
require 'capybara/poltergeist'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  Capybara.javascript_driver = :poltergeist
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.before :each do
    OmniAuth.config.mock_auth[:facebook] = nil
  end
  OmniAuth.config.test_mode = true
  config.include OmniAuthTestHelper
  config.include AuthenticationHelper
end
