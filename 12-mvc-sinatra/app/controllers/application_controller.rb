class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  set :method_override, true

  # INDEX
  get '/games' do
    # @games = Game.all
    erb :index
  end

  get '/games/new' do
    erb :new
  end

  get '/games/:id' do
    @game = Game.find(params[:id])
    erb :show
  end

  post '/games' do
    @game = Game.create(params)
    erb :show
  end

  get '/games/:id/edit' do
    @game = Game.find(params[:id])
    erb :edit
  end

  patch "/games/:id" do
    Game.update(params)
  end
end
