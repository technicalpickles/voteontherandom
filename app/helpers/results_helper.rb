module ResultsHelper
  def one_line_results(battle)
    left_matchup = battle.battle_matchups.left
    right_matchup = battle.battle_matchups.right
    "#{left_matchup.the_random} (#{left_matchup.votes.count}) versus #{right_matchup.the_random} (#{right_matchup.votes.count})"
  end
end
