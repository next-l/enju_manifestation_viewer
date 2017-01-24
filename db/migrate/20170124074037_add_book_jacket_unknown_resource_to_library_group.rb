class AddBookJacketUnknownResourceToLibraryGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :library_groups, :book_jacket_unknown_resource, :string
  end
end
