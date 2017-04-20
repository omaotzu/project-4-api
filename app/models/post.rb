class Post < ApplicationRecord
  belongs_to :stop
  belongs_to :user
  acts_as_votable
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
end
