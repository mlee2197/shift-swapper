class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :uname
      t.string :pwd
      t.string :email
      t.timestamp
    end
  end
end
