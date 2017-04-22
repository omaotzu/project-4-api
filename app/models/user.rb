class User < ApplicationRecord
  acts_as_voter

  has_secure_password validations: false
  mount_uploader :image, ImageUploader

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create

  has_many :trips, dependent: :destroy
  has_many :stops, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy

  def oauth_login?
    github_id.present?
  end
end
