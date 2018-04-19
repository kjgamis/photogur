class Picture < ApplicationRecord

  has_many :comments

  validates :artist, presence: true
  validates :url, uniqueness: true
  validate :minimum_length
  validate :maximum_length

  def self.newest_first
    Picture.order(created_at: :desc)
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end


  private

  def minimum_length


    return if title == nil
    char_length = title.length
    errors.add(:title, 'minimum length 3 characters') if char_length < 3

  end

  def maximum_length

    return if title == nil
    char_length = title.length
    errors.add(:title, 'maximum length 20 characters') if char_length > 20
  end
end
