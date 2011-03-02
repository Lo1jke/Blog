class CreateSaySomethings < ActiveRecord::Migration
  def self.up
    create_table :say_somethings do |t|
      t.integer :user_name

      t.timestamps
    end
  end

  def self.down
    drop_table :say_somethings
  end
end
