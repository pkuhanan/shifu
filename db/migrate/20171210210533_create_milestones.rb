class CreateMilestones < ActiveRecord::Migration[5.1]
  def change
    create_table :milestones do |t|
      t.integer :mentor_id
      t.integer :mentee_id
      t.string :name

      t.timestamps
    end
  end
end
