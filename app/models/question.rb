class Question < ActiveRecord::Base
  has_many :answers
  has_many :comments, :as => :commentable
  belongs_to :asker, {class_name: "User"}
  validates :body, presence: true
  validates :title, presence: true
end
