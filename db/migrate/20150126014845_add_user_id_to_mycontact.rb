class AddUserIdToMycontact < ActiveRecord::Migration
  def change
  	add_column :mycontacts, :user_id, :integer
  end
end
