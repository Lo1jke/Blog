class UpdateHasedPasswordToHashedPassword < ActiveRecord::Migration
  def self.up
    rename_column :users, :hased_password, :hashed_password
  end

  def self.down
    rename_column :users, :hased_password, :hashed_password
  end
end
