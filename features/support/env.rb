require 'capybara/cucumber'
require 'rspec'
require 'dotenv'
require_relative '../lib/sql_automated_checker_testing'

RSpec.configure do |config|
  config.formatter = :documentation
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
 config.ignore_hidden_elements = false
 config.default_max_wait_time = 10
 config.default_driver = :chrome
end