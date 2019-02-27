#!ruby
require 'capybara'
require 'capybara/cucumber'

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app,
                                 :browser => :remote,
                                 :desired_capabilities => :firefox,
                                 :url => "http://browser:4444/wd/hub")
end
Capybara.default_driver = :firefox
