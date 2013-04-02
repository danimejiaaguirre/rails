class Question < ActiveRecord::Base
  belongs_to :category
  has_many :answer
  attr_accessible :description, :letter, :score
end
