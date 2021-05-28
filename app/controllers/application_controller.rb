require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    post '/' do
      @team = Team.new(params)
      params["team"]["heros"].each do | array_element |
        Hero.new(array_element)
      end
      erb :team
    end

end
