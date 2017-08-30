class CreateOccations < ActiveRecord::Migration
  def change
    create_table :occations do |t|
    	t.string :name
      t.timestamps null: false
    end
  end
end
