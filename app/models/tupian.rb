class Tupian < ActiveRecord::Base
   has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  # handling delete in your model, if needed. Replace all image occurences with your asset name.
  attr_accessor :delete_pic
  before_validation { self.pic = nil if self.delete_pic == '1' }
  has_many :commits
end
