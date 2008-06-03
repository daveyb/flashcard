class Cardset < ActiveRecord::Base
  validates_presence_of :name, :description, :user
  validates_length_of :name, :description, :user, :maximum => 255
  
  has_many :cards
end
