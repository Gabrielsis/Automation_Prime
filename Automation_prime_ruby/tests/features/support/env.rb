# frozen_string_literal: true

# :nodoc:
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'
require 'rspec/expectations'
require 'rspec'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://learningprime.com.br'
  config.default_max_wait_time = 5
end
