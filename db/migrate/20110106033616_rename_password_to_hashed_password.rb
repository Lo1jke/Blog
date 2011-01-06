class RenamePasswordToHashedPassword < ActiveRecord::Migration
  def self.up
    rename_column :users, :password, :hased_password
  end

  def self.down
    rename_column :users, :password, :hased_password
  end
end
