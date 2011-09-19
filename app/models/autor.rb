class Autor < ActiveRecord::Base
    has_many :books
end
