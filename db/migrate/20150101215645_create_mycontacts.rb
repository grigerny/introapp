class CreateMycontacts < ActiveRecord::Migration
  def change
    create_table :mycontacts do |t|

      t.timestamps
    end
  end
end
