class AddPerson2NameToIntro < ActiveRecord::Migration
  def change
    add_column :intros, :person2_name, :string
    add_column :intros, :person2_email, :string
  end
end
