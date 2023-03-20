class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.datetime :birthday
      t.string :image_url
      t.integer :user_id
      t.integer :breed_id

      t.timestamps
    end
  end
end
