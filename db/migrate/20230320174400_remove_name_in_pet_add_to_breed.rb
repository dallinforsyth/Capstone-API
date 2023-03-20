class RemoveNameInPetAddToBreed < ActiveRecord::Migration[7.0]
  def change
    remove_column :pets, :name
  end
end
