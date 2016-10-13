class Question < ActiveRecord::Base
  has_many :answers
  has_many :comments, :as => :commentable
  belongs_to :user, foreign_key: :asker_id
  validates :body, presence: true
  validates :title, presence: true
end
