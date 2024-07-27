class CreateUserChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :user_challenges do |t|
      
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.boolean :completed, default: false
      t.integer :totalTry, default: 0

      t.timestamps
    end
  end
end
