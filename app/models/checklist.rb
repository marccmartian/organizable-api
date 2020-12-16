class Checklist < ApplicationRecord
  belongs_to :card
  has_many :check_items, dependent: :destroy
end
