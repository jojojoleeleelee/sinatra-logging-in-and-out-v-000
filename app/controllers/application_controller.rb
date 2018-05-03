require_relative '../../config/environment'


class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
    helpers Helpers
  end

  get '/' do
    erb :index
  end

  post '/login' do
    if User.find_by(username: params[:username], password: params[:password])
      @user = User.find_by(username: params[:username], password: params[:password])
      # session[:id] = @user.id
      session[:user_id] = @user.id
      @user.save
      redirect '/account'
    else
      erb :error
    end
  end

  get '/account' do
    erb :account
  end

  get '/logout' do
    @user.clear
    redirect '/'
  end


end
