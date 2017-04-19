class Stop < ApplicationRecord
  belongs_to :trip
  has_many :posts, dependent: :destroy
end
