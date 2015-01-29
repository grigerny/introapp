class FixReferredbyId < ActiveRecord::Migration
  	def self.up
    rename_column :mycontacts, :referredby_id, :referral_id
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
