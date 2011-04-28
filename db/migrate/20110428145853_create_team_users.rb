class CreateTeamUsers < ActiveRecord::Migration
  def self.up
    create_table :team_users do |t|
      t.references :team
      t.references :user

      t.timestamps
    end
    add_index :team_users, :team_id
    add_index :team_users, :user_id
  end

  def self.down
    drop_table :team_users
  end
end