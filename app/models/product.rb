class Product < ApplicationRecord
  validates :name,  presence: true
  validates :text,  presence: true
  validates :images, presence: true

  belongs_to :user
  has_many_attached :images
  has_one_attached :three_data
  has_many :comments, dependent: :destroy
end
