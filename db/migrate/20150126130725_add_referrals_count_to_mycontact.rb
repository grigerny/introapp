class AddReferralsCountToMycontact < ActiveRecord::Migration
  def change
    add_column :mycontacts, :referrals_count, :integer
  end
end
