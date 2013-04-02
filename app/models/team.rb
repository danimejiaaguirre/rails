class Team < ActiveRecord::Base
  has_many :members
  attr_accessible :name, :score
end
