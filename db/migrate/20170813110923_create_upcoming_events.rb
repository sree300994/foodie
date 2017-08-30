class CreateUpcomingEvents < ActiveRecord::Migration
  def change
    create_table :upcoming_events do |t|
    	t.string :name
    	t.date :date
    	t.text :description
      t.timestamps null: false
    end
  end
end
