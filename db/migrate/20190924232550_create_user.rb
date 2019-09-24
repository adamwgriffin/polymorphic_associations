class CreateUser < ActiveRecord::Migration
  def change
    create_table :user, id: false do |t|
      t.primary_key :userid
      t.text :first_name
      t.text :last_name
      t.timestamps null: false
    end
  end
end
