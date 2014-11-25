class AddUserIdToIntro < ActiveRecord::Migration
  def change
    add_column :intros, :user_id, :integer
  end
end
