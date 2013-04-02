class Member < ActiveRecord::Base
  belongs_to :team
  attr_accessible :name, :team_id
end
