class Post < ApplicationRecord
  belongs_to :stop
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy

  acts_as_votable

  validates :value_for_money, presence: true
  validates :night_life, presence: true
  validates :culture, presence: true
  validates :hospitality, presence: true
end
