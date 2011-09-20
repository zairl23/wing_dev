class Autor < ActiveRecord::Base
    has_many :books
    has_many :albums
end
