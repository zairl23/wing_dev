class AddDetailsToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :url, :string
    add_column :albums, :links, :text
  end
end
