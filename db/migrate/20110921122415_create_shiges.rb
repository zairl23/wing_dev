class CreateShiges < ActiveRecord::Migration
  def change
    create_table :shiges do |t|
      t.string :name
      t.integer :poemtry_id
      t.text :content

      t.timestamps
    end
  end
end
