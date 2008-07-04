class CreateCabinets < ActiveRecord::Migration
  def self.up
    create_table :cabinets do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :cabinets
  end
end
