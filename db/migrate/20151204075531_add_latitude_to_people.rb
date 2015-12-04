class AddLatitudeToPeople < ActiveRecord::Migration
  def change
    add_column :people, :latitude, :float
  end
end
