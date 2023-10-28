class CreateProfilesCaseUsePacientes < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles_case_use_pacientes do |t|

      t.timestamps
    end
  end
end
