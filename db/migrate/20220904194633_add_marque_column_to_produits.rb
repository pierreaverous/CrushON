class AddMarqueColumnToProduits < ActiveRecord::Migration[7.0]
  def change
    add_column :produits, :marque, :string
  end
end
