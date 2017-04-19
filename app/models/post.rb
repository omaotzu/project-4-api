class Post < ApplicationRecord
  belongs_to :stop
  has_many :comments, dependent: :destroy
end
