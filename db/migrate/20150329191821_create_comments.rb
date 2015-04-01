class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :shahid, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :shahids
    add_index :comments, [:shahid_id, :created_at]

  end
end
