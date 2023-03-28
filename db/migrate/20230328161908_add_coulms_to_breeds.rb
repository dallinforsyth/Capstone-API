class AddCoulmsToBreeds < ActiveRecord::Migration[7.0]
  def change
    add_column :breeds, :external_id, :string
    add_column :breeds, :temperament, :string
    add_column :breeds, :description, :string
    add_column :breeds, :life_span, :string
    add_column :breeds, :origin, :string
    add_column :breeds, :hypoallergenic, :integer
  end
end
