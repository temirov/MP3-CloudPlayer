source 'https://rubygems.org'
ruby '2.1.1'
gem 'rails', '~> 4'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass'
gem 'devise'
gem 'haml-rails'
gem 'mongoid', github: "mongoid/mongoid"
gem 'sendgrid'
gem 'thin'
gem 'omniauth-facebook'
gem "mongoid-paperclip", require: "mongoid_paperclip"
gem 'aws-sdk'
gem 'flat-ui-sass', github: 'wingrunr21/flat-ui-sass'
group :production do
  gem 'rails_12factor' 
end
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', platforms: [:mri_19, :mri_20, :mri_21, :rbx]
  gem 'foreman'
  gem 'html2haml'
  gem 'hub', require: nil
  gem 'quiet_assets'
  gem 'rails_layout'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'pry-debugger'
  gem 'rspec-rails'
end
group :test do
  gem 'faker'
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'mongoid-rspec', '>= 1.10.0'
end
