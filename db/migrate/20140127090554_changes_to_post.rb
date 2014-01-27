class ChangesToPost < ActiveRecord::Migration
  def change

  	add_column :posts, :brief, :text
  	add_column :posts, :imgurl, :string

  end
end
