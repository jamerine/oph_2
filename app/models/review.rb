class Review < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :body, presence: true

  scope :active, -> { where active: true }


end
