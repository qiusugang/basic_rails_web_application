class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name, limit: 60
      t.string :description
      t.integer :parent_id

      t.timestamps
    end
  end
end
