class UpdatePeopleColumn < ActiveRecord::Migration
  def change
    change_column :people, :first_name, :string, :null => false
    change_column :people, :last_name, :string, :null => false
    change_column :people, :date_of_birth, :date, :null => false
  end
end
