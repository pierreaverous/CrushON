class CreateVendeurs < ActiveRecord::Migration[7.0]
  def change
    create_table :vendeurs do |t|
      t.string :nameshop
      t.string :email
      t.timestamps
    end
  end
end
