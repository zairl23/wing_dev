class CreateXinwens < ActiveRecord::Migration
  def change
    create_table :xinwens do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
