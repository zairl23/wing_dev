class CreatePoemtries < ActiveRecord::Migration
  def change
    create_table :poemtries do |t|
      t.string :name
      t.date :shijian
      t.integer :autor_id
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
