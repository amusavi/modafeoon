class CreateShahids < ActiveRecord::Migration
  def change
    create_table :shahids do |t|
      t.string :pname
      t.string :ename
      t.string :bio

      t.timestamps null: false
    end
  end
end
