class AddImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
    end
  end
end
