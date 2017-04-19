class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :stop
  has_many :comments
end
