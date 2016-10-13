class User < ActiveRecord::Base
  
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes
 

  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true
  #chose :password b/c we need to test the length before encryption.
  #Otherwise would have chosen :hashed_password.
  #Need to test.
  validates :password, length { minimum: 5 }

  
 
end
