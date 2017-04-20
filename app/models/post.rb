class Post < ApplicationRecord
  belongs_to :stop
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
end
