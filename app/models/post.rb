class Post < ApplicationRecord
  belongs_to :stop
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
end
