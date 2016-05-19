class AddRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :num_tickets

      t.timestamps
    end
  end
end

# event = Event.find(params[:event_id])
# Registration.create(user: current_user, event: event, number_tickets: params[:number_tickets])

# current_user.events