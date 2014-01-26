class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :logo_file
      t.string :field

      t.timestamps
    end
  end
end
