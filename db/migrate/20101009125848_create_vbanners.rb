class CreateVbanners < ActiveRecord::Migration
  def self.up
    create_table :vbanners do |t|
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :vbanners
  end
end
