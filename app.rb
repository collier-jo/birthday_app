require 'sinatra/base'
require_relative './lib/dob'

class Birthday < Sinatra::Base
  get '/' do
    "Homepage"
    p params 
    erb(:index)
  end

  post '/output' do
    p params 
    @name = params[:name]
    @dd = params[:dd]
    @mm = params[:mm]
    @birthday = Dob.new.birthday_message(@dd, @mm)
    erb(:outcome)
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
