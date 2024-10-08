class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
