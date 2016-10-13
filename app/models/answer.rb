class Answer < ActiveRecord::Base
  belongs_to :responders, {class_name: "User", foreign_key: :user_id}
  has_many :questions
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
end
