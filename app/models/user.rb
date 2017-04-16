class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_secure_password validations: false
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create
  has_many :trips

  def oauth_login?
    github_id.present?
  end
end
