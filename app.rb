require 'sinatra/base'
require_relative './lib/diary'

class DailyDairy < Sinatra::Base

  get '/' do
    'Daily Diary'
  end

  get '/diaries' do
    @diaries = Diary.all
    erb :index
  end

  run! if app_file == $0
end
