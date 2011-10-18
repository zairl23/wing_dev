class Album < ActiveRecord::Base
  belongs_to :autor
  has_many :musics
  has_many :commits, :as => :commitable
end
