class CreateIntros < ActiveRecord::Migration
  def change
    create_table :intros do |t|

      t.timestamps
    end
  end
end
