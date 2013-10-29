class Recipe < ActiveRecord::Base
  attr_accessible :name, :notes

  validates :name, :presence => true
end
