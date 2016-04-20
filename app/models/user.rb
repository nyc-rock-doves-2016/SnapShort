class User < ActiveRecord::Base
  has_secure_password

  validates :username, :email, presence: true, uniqueness: true

  has_many :prompts, class_name: "Prompt", foreign_key: :creator_id
  has_many :shorts, class_name: "Short", foreign_key: :creator_id
  # has_many :short_votes, through: :shorts, source: "Vote"
  # has_many :prompt_votes, through: :prompts, source: "Vote"
  # has_many :short_comments, through: :shorts, source: "Comment"
  # has_many :prompt_comments, through: :prompts, source: "Comment"
end
