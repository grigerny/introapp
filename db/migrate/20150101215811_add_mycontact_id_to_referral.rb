class AddMycontactIdToReferral < ActiveRecord::Migration
  def change
    add_column :referrals, :mycontact_id, :integer
  end
end
