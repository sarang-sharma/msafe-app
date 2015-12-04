class AddLongitudeToPeople < ActiveRecord::Migration
  def change
    add_column :people, :longitude, :float
  end
end
