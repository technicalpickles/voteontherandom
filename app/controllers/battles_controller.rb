class BattlesController < ApplicationController
  def index
    @battle = Battle.next_to_vote_on_by(request.session_options[:id])
  end

  def vote
    @battle = Battle.find params[:id]
    debugger
    @battle.vote_on_side!(params[:side], request.session_options[:id])

    redirect_to root_url
  end

end
