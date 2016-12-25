class CreateRules < ActiveRecord::Migration[5.0]
  def change
    create_table :rules do |t|
      t.string :controller_name
      t.string :action_name
      t.string :params

      t.timestamps
    end
  end
end
