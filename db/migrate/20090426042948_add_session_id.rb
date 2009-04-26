class AddSessionId < ActiveRecord::Migration
  def self.up
    change_table :votes do |t|
      t.string :session_id
    end
  end

  def self.down
    change_table :votes do |t|
      t.remove_column :session_id
    end
  end
end
