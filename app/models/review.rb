class Review < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, presence: true,
                   length: { minimum: 5 }
end
