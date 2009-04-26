class TheRandomsController < ApplicationController
  def index
    @the_randoms = TheRandom.all
  end

  def show
    @the_random = TheRandom.find params[:id]
  end

end
