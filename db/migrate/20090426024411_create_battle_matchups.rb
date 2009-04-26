class CreateBattleMatchups < ActiveRecord::Migration
  def self.up
    create_table :battle_matchups do |t|
      t.references :the_random
      t.references :battle
      t.timestamps
    end
  end

  def self.down
    drop_table :battle_matchups
  end
end
