class AddReferredbyToMycontact < ActiveRecord::Migration
  def change
    add_column :mycontacts, :referredby_name, :string
    add_column :mycontacts, :referredby_id, :integer
  end
end
