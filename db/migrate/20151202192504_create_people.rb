class CreatePeople < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string "name", :limit => 60, :null => false
      t.string "location", :default => "", :null => false
      #t.datetime "created_at"
      t.timestamps
    end  
  end

  def down
  	drop_table :users
  end


end
