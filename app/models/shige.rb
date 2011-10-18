class Shige < ActiveRecord::Base
  belongs_to :poemtry
  has_many :commit
end
