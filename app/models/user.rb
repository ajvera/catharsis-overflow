class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true
 
end
