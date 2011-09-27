class CreateTupians < ActiveRecord::Migration
  def change
    create_table :tupians do |t|
      t.string :name
      t.text :description
      t.string :tag

      t.timestamps
    end
  end
end
