class AddReferralsCountToMycontact < ActiveRecord::Migration
  def change
    add_column :mycontacts, :referrals_count, :integer, :default => 0, :null => false
  end
end
