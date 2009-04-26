class BattlesController < ApplicationController
  def index
    @battles = Battle.all
  end

end
