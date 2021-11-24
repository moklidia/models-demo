class Purchase < ApplicationRecord
  belongs_to :user

  validates :date, :amount, presence: true
end
