require "cucumber"
# require "rspec"
# require "rspec/retry"
require "selenium-webdriver"
require "capybara"
require "capybara/dsl"
require "site_prism"
# require "rest-client"
require "httparty"

require_relative "link_helper.rb"
require_relative "page_helper.rb"
require_relative "service_helper.rb"

# controla os linkis, posso mudar o link conforme o ambiente de teste
$env = (ENV["ENV"] || 'qa')

# controla o ambiente web/api
$env_ambiente = (ENV["AMBIENTE"] || 'web')

World(Capybara::DSL)
World(Pages)
World(Rest)

if $env_ambiente == 'web'
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end

  Capybara.configure do |config|
   config.default_driver = :selenium
   config.default_max_wait_time = 15
   Capybara.page.driver.browser.manage.window.maximize
  end
end
