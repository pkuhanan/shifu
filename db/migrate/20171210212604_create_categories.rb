class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.references :milestone, foreign_key: true
      t.integer :point_goal
      t.string :name

      t.timestamps
    end
  end
end
