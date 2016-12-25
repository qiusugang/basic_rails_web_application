class CreateCredentials < ActiveRecord::Migration[5.0]
  def change
    create_table :credentials do |t|
      t.string "match",  limit: 128, null: false
      t.string "params"
      t.timestamps
      t.index ["match"], name: "pkey", unique: true, using: :btree      
    end
  end
end
