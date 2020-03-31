class RemoveNameFromMaterials < ActiveRecord::Migration[5.2]
  def change
    remove_column :materials, :name, :string
  end
end
