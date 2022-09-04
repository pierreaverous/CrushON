class CreateProduits < ActiveRecord::Migration[7.0]
  def change
    create_table :produits do |t|
      t.string :title
      t.float :prix
      t.integer :stock
      t.references :vendeur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
