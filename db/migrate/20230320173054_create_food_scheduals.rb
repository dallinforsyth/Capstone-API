class CreateFoodScheduals < ActiveRecord::Migration[7.0]
  def change
    create_table :food_scheduals do |t|
      t.string :food
      t.integer :frequency
      t.datetime :start_time
      t.integer :pet_id

      t.timestamps
    end
  end
end
