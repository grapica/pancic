class CreateCourseLists < ActiveRecord::Migration
  def self.up
    create_table :course_lists do |t|
      t.string :name
      t.float :buy
      t.float :sell

      t.timestamps
    end
  end

  def self.down
    drop_table :course_lists
  end
end
