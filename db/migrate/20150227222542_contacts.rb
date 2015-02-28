class Contacts < ActiveRecord::Migration
  def change
    def change
    add_column :contacts, :name, :string 
    add_column :contacts, :email, :string  
    add_column :contacts, :comments, :text
  end
  end
end
