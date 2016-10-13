class User < ActiveRecord::Base
  
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes
 

  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true

  def password
  	@password ||= BCrypt::Password.new(self.hashed_password)
  end

  def password=(plaintext)
  	@password = BCrypt::Password.create(plaintext)
  	self.hashed_password = @password
  end

  def authenticate(password)
  	self.password == password
  end
 
end
