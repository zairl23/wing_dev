class Commit < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  belongs_to :xinwen
  belongs_to :commitable, :polymorphic => true
end
