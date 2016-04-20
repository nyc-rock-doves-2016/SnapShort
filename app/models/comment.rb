class Comment < ActiveRecord::Base
  # Remember to cre ate a migration!
  belongs_to :commentable, polymorphic: true

  validates :body, presence: true
end
