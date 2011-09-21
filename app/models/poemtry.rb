class Poemtry < ActiveRecord::Base
   belongs_to :autor
   has_many :shiges
end
