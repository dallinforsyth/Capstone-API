class ReAddName < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :name, :string
  end
end
