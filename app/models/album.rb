class Album < ActiveRecord::Base
  belongs_to :autor
  has_many :musics
end
