class CreateTextPieces < ActiveRecord::Migration
  def self.up
    create_table :text_pieces do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :text_pieces
  end
end
