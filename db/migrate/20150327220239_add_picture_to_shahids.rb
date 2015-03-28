class AddPictureToShahids < ActiveRecord::Migration
  def change
    add_column :shahids, :picture, :string
  end
end
