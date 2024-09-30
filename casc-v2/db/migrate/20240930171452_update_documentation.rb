class UpdateDocumentation < ActiveRecord::Migration[7.1]
  def change

    rename_column :documentations, :challenges_id, :challenge_id
    remove_column :documentations, :description

  end
end
