class AddForeignKeyToItemsReferencingManifestations < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :items, :manifestations
  end
end
