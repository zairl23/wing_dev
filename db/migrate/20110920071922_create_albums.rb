class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :autor_id
      t.date :shijian
      t.text :description

      t.timestamps
    end
  end
end
