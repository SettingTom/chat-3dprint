class Product < ApplicationRecord
  validates :name,  presence: true
  validates :text,  presence: true
  validates :images, presence: true

  belongs_to :user
  has_many_attached :images
  has_many :comments, dependent: :destroy
end
