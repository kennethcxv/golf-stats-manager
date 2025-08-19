class CreateRounds < ActiveRecord::Migration[8.0]
  def change
    create_table :rounds do |t|
      t.references :course, null: false, foreign_key: true
      t.date :date_played
      t.integer :total_score
      t.string :player_name

      t.timestamps
    end
  end
end
