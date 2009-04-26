class CreateTheRandoms < ActiveRecord::Migration
  def self.up
    create_table :the_randoms do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :the_randoms
  end
end
