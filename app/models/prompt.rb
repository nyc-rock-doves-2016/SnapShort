class Prompt < ActiveRecord::Base
  has_many :votes, as: :votable
  has_many :shorts
  has_many :comments, as: :commentable
  belongs_to :creator, class_name: "User", foreign_key: :creator_id

  validates :title, presence: true

  def points
    self.votes.sum(:value)
  end
end
