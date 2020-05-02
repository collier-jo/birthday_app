require 'sinatra/base'
require_relative './lib/dob'

class Birthday < Sinatra::Base
  
  enable :sessions
  
  get '/' do
    "Homepage"
    p params 
    erb(:index)
  end

  post '/output' do
    session[:name] = params[:name]
    session[:dd] = params[:dd]
    session[:mm] = params[:mm]
    redirect '/birthday'
  end 

  get "/birthday" do 
    @name = session[:name]
    @dd= session[:dd]
    @mm = session[:mm]
    @birthday = Dob.new.birthday_message(@dd, @mm)
    erb(:outcome)
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end