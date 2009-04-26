class BattlesController < ApplicationController
  def index
    @battle = Battle.first
  end

  def vote
    @battle = Battle.find params[:id]
    @battle.vote_on_side!(params[:side])

    redirect_to battles_url
  end

end
