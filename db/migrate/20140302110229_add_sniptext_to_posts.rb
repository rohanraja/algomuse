class AddSniptextToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sniptext, :text
  end
end
