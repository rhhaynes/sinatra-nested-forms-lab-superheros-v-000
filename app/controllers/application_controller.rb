require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do
    erb :'super_hero'
  end
  
  post '/teams' do
    hero_params = params.delete(params[:team][:])
    team_params = params
    erb :'team'
  end

end
