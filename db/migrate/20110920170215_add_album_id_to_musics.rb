class AddAlbumIdToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :album_id, :integer
  end
end
