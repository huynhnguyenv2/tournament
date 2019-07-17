class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.integer :player_one_id, :references => "player", foreign_key: true
      t.integer :player_two_id, :references => "player", foreign_key: true

      t.belongs_to :match, index: true
      t.timestamps
    end
  end
end
