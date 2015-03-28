class AddLinksToShahids < ActiveRecord::Migration
  def change
    add_column :shahids, :link1, :string
    add_column :shahids, :link2, :string
    add_column :shahids, :link3, :string
  end
end
