require "test_helper"

class UsersBackoffice::Pacientes::WelcomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_backoffice_pacientes_welcome = users_backoffice_pacientes_welcomes(:one)
  end

  test "should get index" do
    get users_backoffice_pacientes_welcomes_url
    assert_response :success
  end

  test "should get new" do
    get new_users_backoffice_pacientes_welcome_url
    assert_response :success
  end

  test "should create users_backoffice_pacientes_welcome" do
    assert_difference("UsersBackoffice::Pacientes::Welcome.count") do
      post users_backoffice_pacientes_welcomes_url, params: { users_backoffice_pacientes_welcome: { index: @users_backoffice_pacientes_welcome.index } }
    end

    assert_redirected_to users_backoffice_pacientes_welcome_url(UsersBackoffice::Pacientes::Welcome.last)
  end

  test "should show users_backoffice_pacientes_welcome" do
    get users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome)
    assert_response :success
  end

  test "should update users_backoffice_pacientes_welcome" do
    patch users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome), params: { users_backoffice_pacientes_welcome: { index: @users_backoffice_pacientes_welcome.index } }
    assert_redirected_to users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome)
  end

  test "should destroy users_backoffice_pacientes_welcome" do
    assert_difference("UsersBackoffice::Pacientes::Welcome.count", -1) do
      delete users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome)
    end

    assert_redirected_to users_backoffice_pacientes_welcomes_url
  end
end
