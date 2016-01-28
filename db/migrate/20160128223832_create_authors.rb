class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :href
      t.string :imgurl
      t.string :info

      t.timestamps
    end
  end
end
