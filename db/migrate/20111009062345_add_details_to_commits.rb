class AddDetailsToCommits < ActiveRecord::Migration
  def change
    add_index :commits, :book_id
    add_index :commits, :user_id
  end
end
