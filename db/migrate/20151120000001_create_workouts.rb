class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :sets
      t.string :reps
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
