class AddAdmin < ActiveRecord::Migration
  def self.up
      admin_user = User.create(:username => 'admin',
                           :email => 'admin@agencijapancic.co.rs',
                           :password => 'admin', :password_confirmation => 'admin')
  end
  def self.down
     User.find_by_username('admin').destroy
  end
end