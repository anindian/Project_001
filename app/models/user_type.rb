class UserType < ActiveRecord::Base
  attr_accessible :name, :permalink
  has_many :users
end
