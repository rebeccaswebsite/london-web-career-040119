class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  set :method_override, true

  # INDEX
  get '/games' do
    @games = Game.all
    erb :index
  end

  # NEW
  get '/games/new' do
    erb :new
  end

  # SHOW
  get '/games/:id' do
    @game = Game.find(params[:id])
    erb :show
  end

  # GAME
  post '/games' do
    @game = Game.create(params)
    erb :show
  end

  # EDIT
  get '/games/:id/edit' do
    @game = Game.find(params[:id])
    erb :edit
  end

  # UPDATE
  patch '/games/:id' do
    Game.update(params)
  end
end
