class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :user_pwd
      t.string :user_email
      #Add columns updated_by & created_by so that rails keep track of when the user is added.
      t.timestamps 
    end
  end
end
