class User < ActiveRecord::Base
  belongs_to :rol
  attr_accessible :email, :name, :pasword
end
