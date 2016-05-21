class Event < ActiveRecord::Base
  has_many :registrations  
  has_many :users, through: :registrations 

  # after_save :min_required_reached

  validates :name, :date, :num_user, :reg_price, :disc_price, :image_url, :location, presence: true 
  validates :min_required, presence: true
  validates :num_user, numericality: { only_integer: true }
  validates :reg_price, :disc_price, numericality: { greater_than: 0 }


  def min_required_reached?
    event = Event.find(params[:event_id])
    event.num_user >= events.min_required
    
  end

end