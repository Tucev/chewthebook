class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, :force => true do |t|
      t.column :login,                     :string
      t.column :email,                     :string
      t.column :crypted_password,          :string, :limit => 40
      t.column :salt,                      :string, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :remember_token,            :string
      t.column :remember_token_expires_at, :datetime
    end
        
    create_table :projects_users, :force => true do |t|
      t.column :project_id,     :int
      t.column :user_id,        :int
      t.column :organiger,      :boolean, :default => 0
    end
  end

  def self.down
    drop_table :users
    drpp_table :projects_users
  end
end
