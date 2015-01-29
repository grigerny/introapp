class AddNameToMycontact < ActiveRecord::Migration
  def change
    add_column :mycontacts, :name, :string
  end
end
