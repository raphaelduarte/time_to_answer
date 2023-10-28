require "application_system_test_case"

class Profiles::CaseUse::PacientesTest < ApplicationSystemTestCase
  setup do
    @profiles_case_use_paciente = profiles_case_use_pacientes(:one)
  end

  test "visiting the index" do
    visit profiles_case_use_pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "should create paciente" do
    visit profiles_case_use_pacientes_url
    click_on "New paciente"

    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "should update Paciente" do
    visit profiles_case_use_paciente_url(@profiles_case_use_paciente)
    click_on "Edit this paciente", match: :first

    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "should destroy Paciente" do
    visit profiles_case_use_paciente_url(@profiles_case_use_paciente)
    click_on "Destroy this paciente", match: :first

    assert_text "Paciente was successfully destroyed"
  end
end
