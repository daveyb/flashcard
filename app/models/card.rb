class Card < ActiveRecord::Base
  belongs_to :cardset
  validates_presence_of :position
end