Capybara.default_driver = :chrome
# Selenium::WebDriver::Chrome::Service.executable_path = '/usr/local/bin/chromedriver' # specify the path of chromedriver
Selenium::WebDriver::Chrome::Service.executable_path = File.join(Rails.root, "lib", "chromedriver") # specify the path of chromedriver
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser =>  :chrome)
end