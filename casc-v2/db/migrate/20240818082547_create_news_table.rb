class CreateNewsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :casc_news do |t|
      t.string :title
      t.text :content
      t.string :nType
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
