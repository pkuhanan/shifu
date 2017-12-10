class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.references :category, foreign_key: true
      t.references :feedback, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
