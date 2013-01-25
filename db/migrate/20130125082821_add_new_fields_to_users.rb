class AddNewFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :user_type_id, :integer, :limit => 11
    add_column :users, :first_name, :string, :limit => 16
    add_column :users, :last_name, :string, :limit => 16
    add_column :users, :username, :string, :limit => 16
    add_column :users, :email, :string, :limit => 64
    add_column :users, :password, :string, :limit => 64
    add_column :users, :address, :string
    add_column :users, :mobile_number, :string, :limit => 16
    add_column :users, :alternate_number, :string, :limit => 16
  end

  def self.down
  end
end
