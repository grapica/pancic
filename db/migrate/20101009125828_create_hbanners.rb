class CreateHbanners < ActiveRecord::Migration
  def self.up
    create_table :hbanners do |t|
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :hbanners
  end
end
