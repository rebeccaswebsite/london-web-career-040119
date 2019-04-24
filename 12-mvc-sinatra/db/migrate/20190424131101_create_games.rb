class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :creator
      t.integer :playtime
    end
  end
end
