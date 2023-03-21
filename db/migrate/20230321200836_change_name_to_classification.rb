class ChangeNameToClassification < ActiveRecord::Migration[7.0]
  def change
    rename_column :breeds, :name, :classification
  end
end
