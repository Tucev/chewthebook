#require "migration_helpers"

class CreateProjects < ActiveRecord::Migration
  #extend MigrationHelpers
  
  def self.up
    create_table :projects, :force=> true do |t| 
      t.column  :name,                    :string, :limit => 6 
      t.column  :description,             :string, :limit => 6      
      t.column  :started,                 :boolean  
    end
    #foreign_key(:projects, :user_id, :users)
  end
  
  def self.down
    drop_table :projects
  end
end
