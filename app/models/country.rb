class Country < ApplicationRecord
  has_many :users
  has_many :purchases, through: :users

  validates :name, presence: true
end
