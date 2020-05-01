require 'sinatra/base'

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
    erb(:outcome)
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
