class Position < ApplicationRecord

  scope :active, -> { where active: true }

  mount_uploader :application, ApplicationUploader

end
