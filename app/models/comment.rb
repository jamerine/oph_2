class Comment < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email_address, presence: true
  validates :phone_number, presence: true
  validates :body, presence: true


end
