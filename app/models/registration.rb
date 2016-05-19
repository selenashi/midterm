class Registration < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :num_tickets, presence: true
  validates :num_tickets, numericality: { only_integer: true }
end