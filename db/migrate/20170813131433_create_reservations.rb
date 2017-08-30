class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.string :name
    	t.string :email
    	t.integer :occation_id
    	t.text :message
    	t.date :occation_date

      t.timestamps null: false
    end
  end
end
