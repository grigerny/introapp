class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :signature, :string
  end
end
