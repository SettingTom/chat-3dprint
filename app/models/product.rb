class Product < ApplicationRecord
  validates :name,  presence: true
  validates :text,  presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image
  has_one_attached :three_data
  has_many :comments, dependent: :destroy
end
