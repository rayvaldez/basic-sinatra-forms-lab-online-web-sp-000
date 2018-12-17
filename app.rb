require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    puts params
    @team_name = params["name"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @sf = params["sf"]
    @pf = params["pf"]
    @ct = params["ct"]
    erb :team
  end
end
