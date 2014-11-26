class AddEmailSubjectToIntro < ActiveRecord::Migration
  def change
    add_column :intros, :email_subject, :text
  end
end
