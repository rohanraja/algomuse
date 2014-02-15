class AddIpToSubsEmails < ActiveRecord::Migration
  def change
    add_column :subs_emails, :ip, :string
  end
end
