class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :nada_id
      t.string :origin

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
