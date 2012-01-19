class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :email, :unique => true # add index on table users on column email of type unique
  end

  def self.down
    remove_index :users, :email
  end
end
