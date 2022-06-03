source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.6"

#these pieces of software that are not put into groups will be 
#installed in all environments
gem "rails", "~> 7.0.2.2" #ruby software
gem "puma", "~> 5.0" #for data protection
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
# gem "aws-sdk-s3", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do #these 2 pieces of software will only be installed in dev environment
  gem "tabulo"
  gem "web-console"
  gem "sqlite3", "~> 1.4" #SQL software - we don't use sqlite3 in prod environment
end

group :production: do #i want this to be stalled only in prod environment
  gem "pg" #this is the ruby interface for the posgres software
end