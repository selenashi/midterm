class Registration < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :num_tickets, presence: true
  validates :num_tickets, numericality: { only_integer: true }
  # after_create :send_sms


  # def min_required_reached?
  #   event = Event.find(params[:event_id])
  #   event.num_user >= events.min_required
  # end


end