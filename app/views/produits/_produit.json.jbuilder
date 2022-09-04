json.extract! produit, :id, :title, :prix, :stock, :vendeur_id, :created_at, :updated_at
json.url produit_url(produit, format: :json)
