require "test_helper"

class Profiles::CaseUse::PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profiles_case_use_paciente = profiles_case_use_pacientes(:one)
  end

  test "should get index" do
    get profiles_case_use_pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_profiles_case_use_paciente_url
    assert_response :success
  end

  test "should create profiles_case_use_paciente" do
    assert_difference("Profiles::CaseUse::Paciente.count") do
      post profiles_case_use_pacientes_url, params: { profiles_case_use_paciente: {  } }
    end

    assert_redirected_to profiles_case_use_paciente_url(Profiles::CaseUse::Paciente.last)
  end

  test "should show profiles_case_use_paciente" do
    get profiles_case_use_paciente_url(@profiles_case_use_paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_profiles_case_use_paciente_url(@profiles_case_use_paciente)
    assert_response :success
  end

  test "should update profiles_case_use_paciente" do
    patch profiles_case_use_paciente_url(@profiles_case_use_paciente), params: { profiles_case_use_paciente: {  } }
    assert_redirected_to profiles_case_use_paciente_url(@profiles_case_use_paciente)
  end

  test "should destroy profiles_case_use_paciente" do
    assert_difference("Profiles::CaseUse::Paciente.count", -1) do
      delete profiles_case_use_paciente_url(@profiles_case_use_paciente)
    end

    assert_redirected_to profiles_case_use_pacientes_url
  end
end
