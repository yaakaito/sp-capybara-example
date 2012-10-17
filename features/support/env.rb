require "Capybara"
require "Capybara/cucumber"
require 'Capybara/mechanize'

Capybara.app_host = "http://localhost:3000"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, {:browser => :remote, :url => "http://localhost:3001/wd/hub"})
end

# Capybara.javascript_driver = :chrome
