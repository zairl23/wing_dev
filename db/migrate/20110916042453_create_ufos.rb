class CreateUfos < ActiveRecord::Migration
  def change
    create_table :ufos do |t|
      t.string :title
      t.string :url
      t.datetime :time
      t.string :diqu

      t.timestamps
    end
  end
end
