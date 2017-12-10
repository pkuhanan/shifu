class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.references :milestone, foreign_key: true
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
