class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
  validate :correct_title

  def correct_title
     if :title.downcase == 'true facts'
        errors.add(:title, "can't be Ture Facts")
  end
end
end
