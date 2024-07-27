class CreateChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :challenges do |t|

      t.string :title
      t.text :description

      t.integer :points, default: 0
      t.integer :rank, default: 0
      t.integer :difficulty, default: 0
      t.integer :totalTry, default: 0
      t.integer :totalSuccess, default: 0

      t.string :language

      t.timestamps
    end
  end
end
