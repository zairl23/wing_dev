class Music < ActiveRecord::Base
  belongs_to :album
  has_many :commits
end
