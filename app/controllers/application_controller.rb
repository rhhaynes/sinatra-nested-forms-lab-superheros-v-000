require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do
    erb :'super_hero'
  end
  
  post '/teams' do
    hero_params = params["team"].delete("members")
    hero_params.each{|attributes| Superhero.new(attributes)}
    @heros = Superhero.all
    @team  = Team.new(params["team"])
    erb :'team'
  end

end
