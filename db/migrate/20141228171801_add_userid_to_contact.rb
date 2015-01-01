class AddUseridToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :user_id, :integer
    add_column :contacts, :name, :string
    add_column :contacts, :email, :string
  end
end
