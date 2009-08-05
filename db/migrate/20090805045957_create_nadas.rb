class CreateNadas < ActiveRecord::Migration
  def self.up
    create_table :nadas do |t|
      t.string :text
      t.string :image_filename
      t.string :image_url
      t.string :link_tag

      t.timestamps
    end
  end

  def self.down
    drop_table :nadas
  end
end
