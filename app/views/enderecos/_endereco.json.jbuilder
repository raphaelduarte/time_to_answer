json.extract! endereco, :id, :street, :neighborhood, :city, :state, :number, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
