require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
      @team = Team.new(params[:team])
      #params[:team][:hero].each do |hero|
      #  Hero.new[hero]
      #end
      "#{params[:team][:hero][0][:name]}"

    end


end
