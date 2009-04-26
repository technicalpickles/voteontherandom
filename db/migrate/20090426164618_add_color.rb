class AddColor < ActiveRecord::Migration
  def self.up
    change_table :the_randoms do |t|
      t.string :color
    end


  end

  def self.down
    change_table :the_randoms do |t|
      t.remove_column :color
    end
  end
end
