class Short < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :creator, class_name: "User", foreign_key: :creator_id
  belongs_to :prompt

  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :body, presence: true

  def points
    self.votes.sum(:value)
  end
end
