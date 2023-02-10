class CreateStepCounts < ActiveRecord::Migration[7.0]
  def change
    create_table :step_counts do |t|
      t.integer :steps
      t.float :distance
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
