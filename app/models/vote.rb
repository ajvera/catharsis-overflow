class Vote < ActiveRecord::Base
belongs_to :votable, polymorphic: true
belongs_to :user, foreign_key: :voter_id
end
