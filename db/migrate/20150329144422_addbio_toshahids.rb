class AddbioToshahids < ActiveRecord::Migration
  def change
    change_column :shahids, :bio, :text, :limit => 1000
    add_column :users, :reset_digest, :string
  end
end
