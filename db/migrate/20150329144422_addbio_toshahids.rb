class AddbioToshahids < ActiveRecord::Migration
  def change
    change_column :shahids, :bio, :text, :limit => 1000
  end
end
