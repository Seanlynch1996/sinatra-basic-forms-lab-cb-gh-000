require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/index' do
    erb :create_puppy
  end

  post '/create' do
    @name = params[:name].to_s
    @breed = params[:breed].to_s
    @age = params[:age]

    erb :display_puppy
  end

end
