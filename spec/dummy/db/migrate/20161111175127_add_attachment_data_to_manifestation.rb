class AddAttachmentDataToManifestation < ActiveRecord::Migration[5.1][5.0]
  def change
    add_column :manifestations, :attachment_data, :jsonb
  end
end
