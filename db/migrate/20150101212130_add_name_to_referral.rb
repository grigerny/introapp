class AddNameToReferral < ActiveRecord::Migration
  def change
    add_column :referrals, :name, :string
    add_column :referrals, :user_id, :integer
  end
end
