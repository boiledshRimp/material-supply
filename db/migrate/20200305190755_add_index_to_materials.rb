class AddIndexToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_index :materials, :text, length: 32
  end
end
