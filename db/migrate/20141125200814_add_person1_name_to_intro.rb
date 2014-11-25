class AddPerson1NameToIntro < ActiveRecord::Migration
  def change
    add_column :intros, :person1_name, :string
    add_column :intros, :person1_email, :string
  end
end
