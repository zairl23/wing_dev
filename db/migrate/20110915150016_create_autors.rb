class CreateAutors < ActiveRecord::Migration
  def change
    create_table :autors do |t|
      t.string :name
      t.text :description
      t.text :links

      t.timestamps
    end
  end
end
