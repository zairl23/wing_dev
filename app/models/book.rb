class Book < ActiveRecord::Base
  belongs_to :autor
  has_many :commits
end
