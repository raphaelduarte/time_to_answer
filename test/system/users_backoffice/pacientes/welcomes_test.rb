require "application_system_test_case"

class UsersBackoffice::Pacientes::WelcomesTest < ApplicationSystemTestCase
  setup do
    @users_backoffice_pacientes_welcome = users_backoffice_pacientes_welcomes(:one)
  end

  test "visiting the index" do
    visit users_backoffice_pacientes_welcomes_url
    assert_selector "h1", text: "Welcomes"
  end

  test "should create welcome" do
    visit users_backoffice_pacientes_welcomes_url
    click_on "New welcome"

    fill_in "Index", with: @users_backoffice_pacientes_welcome.index
    click_on "Create Welcome"

    assert_text "Welcome was successfully created"
    click_on "Back"
  end

  test "should update Welcome" do
    visit users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome)
    click_on "Edit this welcome", match: :first

    fill_in "Index", with: @users_backoffice_pacientes_welcome.index
    click_on "Update Welcome"

    assert_text "Welcome was successfully updated"
    click_on "Back"
  end

  test "should destroy Welcome" do
    visit users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome)
    click_on "Destroy this welcome", match: :first

    assert_text "Welcome was successfully destroyed"
  end
end
