class AddAutorIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :autor_id, :integer
  end
end
