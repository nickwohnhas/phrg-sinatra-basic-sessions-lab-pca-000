require_relative 'config/environment'
require 'pry'
configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do

     session[:item] = params[:item]
     # session[params.keys[0]] = params.values[0]
     @session = session

    erb :checkout
  end
end
