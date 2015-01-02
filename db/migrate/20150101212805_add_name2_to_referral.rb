class AddName2ToReferral < ActiveRecord::Migration
  def change
    add_column :referrals, :name2, :string
  end
end
