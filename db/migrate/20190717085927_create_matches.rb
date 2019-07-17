class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :time
      t.date :date
      t.string :venue
      t.decimal :point_1
      t.decimal :point_2


      t.timestamps
    end
  end
end
