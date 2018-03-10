require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do
    erb :'super_hero'
  end
  
  post '/teams' do
    hero_params_a = params[:team].delete("members")
    team_params_h = params[:team]
    binding.pry
    erb :'team'
  end

end
