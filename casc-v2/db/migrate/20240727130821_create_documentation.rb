class CreateDocumentation < ActiveRecord::Migration[7.1]
  def change
    create_table :documentations do |t|
      t.references :challenges, null: false, foreign_key: true

      t.string :title
      t.text :description
      t.string :path

      t.timestamps
    end
  end
end
