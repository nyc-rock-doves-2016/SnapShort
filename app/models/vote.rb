class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :votable, polymorphic: true

  validates :value, presence: true
end
