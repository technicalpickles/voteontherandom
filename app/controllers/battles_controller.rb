class BattlesController < ApplicationController
  def index
    @battle = Battle.next_to_vote_on_by(request.session_options[:id])
    @last_battle = Battle.find(flash[:last_id]) if flash[:last_id]

  end

  def vote
    @battle = Battle.find params[:id]
    @battle.vote_on_side!(params[:side], request.session_options[:id])

    flash[:last_id] = @battle.to_param

    
    redirect_to params[:return_to] || root_url
  end

end
