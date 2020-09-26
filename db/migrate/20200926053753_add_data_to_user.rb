class AddDataToUser < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :name, :string
    add_column :users, :password, :string
    add_column :users, :city, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :notifications, :boolean
    add_column :users, :admin, :boolean
  end
end
