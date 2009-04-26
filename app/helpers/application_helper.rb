# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def can_vote_on?(battle)
    ! battle.votes.find_by_session_id(request.session_options[:id])
  end
end
