class CreateSubsEmails < ActiveRecord::Migration
  def change
    create_table :subs_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
