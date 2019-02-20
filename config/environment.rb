require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

ActiveRecord::Base.logger = nil

SINATRA_ACTIVESUPPORT_WARNING=false

require_all 'app'
