class CreateEnderecos < ActiveRecord::Migration[7.1]
  def change
    create_table :enderecos do |t|
      t.string :street
      t.string :neighborhood
      t.string :city
      t.string :state
      t.integer :number

      t.timestamps
    end
  end
end
