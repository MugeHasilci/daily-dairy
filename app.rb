require 'sinatra/base'

class DailyDairy < Sinatra::Base

  get '/' do
    'Daily Dairy'
  end

  run! if app_file == $0
end
