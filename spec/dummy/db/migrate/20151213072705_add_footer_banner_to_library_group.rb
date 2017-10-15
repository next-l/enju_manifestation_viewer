class AddFooterBannerToLibraryGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :library_groups, :footer_banner, :jsonb
  end
end
