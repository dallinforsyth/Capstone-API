class CreateBreeds < ActiveRecord::Migration[7.0]
  def change
    create_table :breeds do |t|
      t.string :classification
      t.string :animal_type

      t.timestamps
    end
  end
end
