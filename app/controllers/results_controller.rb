class ResultsController < ApplicationController
  def index
    @battles = Battle.all.sort_by {|battle| battle.votes.count }.reverse
  end

  def show
    @battle = Battle.find params[:id]
  end

end
