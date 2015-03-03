class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #t.integer :id
      t.string :name
      t.string :handle
      t.string :username
      t.string :password
      t.string :email
      t.string :picture_url

      t.timestamps
    end
  end
end
