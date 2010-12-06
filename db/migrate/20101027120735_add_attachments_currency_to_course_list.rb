class AddAttachmentsCurrencyToCourseList < ActiveRecord::Migration
  def self.up

    add_column :course_lists, :currency_file_name, :string
    add_column :course_lists, :currency_content_type, :string
    add_column :course_lists, :currency_file_size, :integer
    add_column :course_lists, :currency_updated_at, :datetime

  end

  def self.down

    remove_column :course_lists, :currency_file_name
    remove_column :course_lists, :currency_content_type
    remove_column :course_lists, :currency_file_size
    remove_column :course_lists, :currency_updated_at

  end
end
