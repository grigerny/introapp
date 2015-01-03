class AddLocationToMycontact < ActiveRecord::Migration
  def change
    add_column :mycontacts, :location, :string
  end
end
