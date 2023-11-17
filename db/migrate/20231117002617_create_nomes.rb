class CreateNomes < ActiveRecord::Migration[7.1]
  def change
    create_table :nomes do |t|
      t.string :nome
      t.string :sobrenome

      t.timestamps
    end
  end
end
