class AddRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references(:users)
      t.references(:events)
      t.integer :num_tickets

      t.timestamps
    end
  end
end
