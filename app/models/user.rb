class User < ActiveRecord::Base
  has_many :collectives
  attr_accessible :firstname, :lastname, :user_id, :username
end
