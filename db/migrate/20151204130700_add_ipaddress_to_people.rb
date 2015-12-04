class AddIpaddressToPeople < ActiveRecord::Migration
  def change
    add_column :people, :ipaddress, :string
  end
end
