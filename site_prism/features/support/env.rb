require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

BROWSER = ENV['BROWSER']

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(PageObjects)

Capybara.register_driver :selenium do|app|

if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
elsif BROWSER.eql?('firefox')   
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
elsif BROWSER.eql?('ie')     
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
elsif BROWSER.eql?('safari')     
    Capybara::Selenium::Driver.new(app, :browser => :safari)
elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false }     
    Capybara::Poltergeist::Driver.new(app, options)
    
end

end


Capybara.configure do |config|
    
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5

end    
    #selenium  selenium_chrome selenium_chrome_headless (sem gpu do navegador)
    #config.default_driver = Selenium::WebDriver.for:internet_explorer
    #CONFIG = ['user']
    
