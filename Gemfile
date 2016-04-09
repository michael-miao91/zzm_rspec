source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
gem 'bootstrap-sass', '~> 3.1.1'

group :development, :test do
  gem "rspec-rails", "~> 3.1.0"     #分装RSpec的程序,还包含了一些专为Rails提供的功能
  gem "factory_girl_rails", "~> 4.4.1"  #把Rails生成测试数据默认使用的估计换成更好用的预构件
end

group :test do
  gem  "faker", "~> 1.4.3"  #为预构件生成名字, Email地址以及其他的示例数据
  gem "capybara", "~> 2.4.3"  #便于模拟用户和应用的交互操作
  gem "database_cleaner", "~> 1.3.0"  #清理 "测试数据库", 确保Rspec忠的测试用例运行于一块净土之上
  gem "launchy", "~> 2.4.2" #这个gem的功能只有一个,但做的很好,如果需要,它会打开系统的默认浏览器, 显示应用当前渲染的页面.调试测试特别有用
  gem "selenium-webdriver", "~> 2.43.0" #结合Capybara测试基于JavaScript的交互操作
end


