class DropScheduals < ActiveRecord::Migration[7.0]
  def change
    drop_table :food_scheduals, if_exists: true
  end
end
