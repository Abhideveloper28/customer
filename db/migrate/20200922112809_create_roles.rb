class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.integer :role_name
      t.string :role_code
      t.integer :user_id

      t.timestamps
    end
  end
end
