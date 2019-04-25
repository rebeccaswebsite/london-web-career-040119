class DogsController < ApplicationController

  # index
  get "/dogs" do
    @dogs = Dog.all
    erb :"dogs/index"
  end

  # show
  get "/dogs/:id" do
    @dog = Dog.find(params[:id])
    erb :"dogs/show"
  end

end
