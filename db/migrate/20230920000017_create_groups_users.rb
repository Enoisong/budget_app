class CreateGroupsUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_users do |t|
      t.references :group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
