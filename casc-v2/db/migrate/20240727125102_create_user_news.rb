class CreateUserNews < ActiveRecord::Migration[7.1]
  def change
    create_table :user_news do |t|

      t.references :user, null: false, foreign_key: true

      t.string :title
      t.text :description


      t.timestamps
    end
  end
end
