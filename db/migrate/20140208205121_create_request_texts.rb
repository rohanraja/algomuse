class CreateRequestTexts < ActiveRecord::Migration
  def change
    create_table :request_texts do |t|
      t.string :name
      t.string :email
      t.string :website
      t.text :body
      t.string :ip

      t.timestamps
    end
  end
end
