class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.text :links
      t.text :summary

      t.timestamps
    end
  end
end
