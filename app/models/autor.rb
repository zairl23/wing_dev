class Autor < ActiveRecord::Base
    has_many :books
    has_many :albums
    has_many :poemtries
    has_many :commits
end
