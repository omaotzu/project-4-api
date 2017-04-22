class Stop < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :posts, dependent: :destroy
end
