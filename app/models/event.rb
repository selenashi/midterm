class Event < ActiveRecord::Base
  has_many :registrations  
  has_many :users, through: :registrations 

  validates :name, :date, :num_users, :reg_price, :disc_price, presence: true 
  validates :min_required, presence: true
  validates :num_users, numericality: { only_integer: true }
  validates :reg_price, :disc_price, numericality: { greater_than: 0 }
end