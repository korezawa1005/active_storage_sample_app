class Post < ApplicationRecord
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_fill: [120, 120, gravity: :center]
  end

  validates :title, presence: true

  validates :avatar, content_type: ["image/png", "image/jpeg", "image/gif"]
end
