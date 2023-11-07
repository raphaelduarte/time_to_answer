class CreateUsersBackofficePacientesWelcomes < ActiveRecord::Migration[7.1]
  def change
    create_table :users_backoffice_pacientes_welcomes do |t|
      t.string :index

      t.timestamps
    end
  end
end
