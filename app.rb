require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions
  # set :session_secret, 'secret session'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new((params[:player_1_name]), (params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player2_hp = $game.player_2.hit_points
    erb :play
  end

  get '/attack' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player2_hp = $game.attack($game.player_2)
    erb :attack
  end

end
