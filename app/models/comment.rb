class Comment < ApplicationRecord
  belongs_to :picture
  validates :message, presence: true
end
