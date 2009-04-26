class ResultsController < ApplicationController
  def index
    @battles = Battle.all
  end

end
