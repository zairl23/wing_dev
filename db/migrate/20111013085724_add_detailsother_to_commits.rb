class AddDetailsotherToCommits < ActiveRecord::Migration
  def change
    add_column :commits, :commitable_id, :integer
    add_column :commits, :commitable_type, :string
  end
end
