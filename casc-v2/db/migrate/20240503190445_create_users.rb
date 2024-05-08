class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.boolean :isAlgosup?, default: false
      t.integer :points, default: 0
      t.integer :rank, default: 0
      t.integer :connections, default: 0
      t.datetime :lastConnection
      t.string :pPicturePath
      t.timestamps
    end
  end
end
