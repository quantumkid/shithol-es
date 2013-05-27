class Toilet < ActiveRecord::Base
  MIN_SCORE = 1
  MAX_SCORE = 5
  
  attr_accessible :name, :score, :lat, :lng, :imgurl, :cost  
  
  validates :name, :score, :cost, :lat, :lng, :presence => true
  validates :score, :numericality => {:greater_than_or_equal_to => MIN_SCORE, :less_than_or_equal_to => MAX_SCORE}
end
