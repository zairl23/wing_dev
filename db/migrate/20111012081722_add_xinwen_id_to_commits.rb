class AddXinwenIdToCommits < ActiveRecord::Migration
  def change
    add_column :commits, :xinwen_id, :integer
  end
end
