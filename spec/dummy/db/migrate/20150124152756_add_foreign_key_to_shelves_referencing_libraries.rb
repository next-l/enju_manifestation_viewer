class AddForeignKeyToShelvesReferencingLibraries < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :shelves, :libraries
    add_foreign_key :items, :shelves
  end
end
