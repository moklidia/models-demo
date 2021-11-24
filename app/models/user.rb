# frozen_string_literal: true
class User < ApplicationRecord
  has_many :purchases
  belongs_to :country

  ACTIVE = 'active'
  ARCHIVED = 'archived'
  STATES = [ACTIVE, ARCHIVED]

  validates :state, presence: true, inclusion: { in: STATES }

  def full_name
    "#{first_name} #{last_name}"
  end

  scope :active, -> { where(state: ACTIVE) }
end
