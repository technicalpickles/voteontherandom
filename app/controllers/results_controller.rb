class ResultsController < ApplicationController
  def index
    @battles = Battle.all
  end

  def show
    @battle = Battle.find params[:id]
  end

end
