class AddDininghallsValueeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dininghalls, :string
  end
end
