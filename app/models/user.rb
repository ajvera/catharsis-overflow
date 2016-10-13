class User < ActiveRecord::Base
  
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes, :as => :voteable
 

  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true
 
end
