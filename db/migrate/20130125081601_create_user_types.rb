class CreateUserTypes < ActiveRecord::Migration
  def self.up
    create_table :user_types, :options => "ENGINE=MyISAM" do |t|
      t.string :name, :limit => 36
      t.string :permalink, :limit => 16

      t.timestamps
    end

    UserType.create([{:name => "Free User", :permalink => "free"}, {:name => "Pro User", :permalink => "pro"}, {:name => "Plus User", :permalink => "plus"}])
  end

  def self.down
    drop_table :user_types
  end
end
