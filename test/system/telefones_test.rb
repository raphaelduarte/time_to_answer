require "application_system_test_case"

class TelefonesTest < ApplicationSystemTestCase
  setup do
    @telefone = telefones(:one)
  end

  test "visiting the index" do
    visit telefones_url
    assert_selector "h1", text: "Telefones"
  end

  test "should create telefone" do
    visit telefones_url
    click_on "New telefone"

    fill_in "Ddd", with: @telefone.ddd
    fill_in "Telefone", with: @telefone.telefone
    click_on "Create Telefone"

    assert_text "Telefone was successfully created"
    click_on "Back"
  end

  test "should update Telefone" do
    visit telefone_url(@telefone)
    click_on "Edit this telefone", match: :first

    fill_in "Ddd", with: @telefone.ddd
    fill_in "Telefone", with: @telefone.telefone
    click_on "Update Telefone"

    assert_text "Telefone was successfully updated"
    click_on "Back"
  end

  test "should destroy Telefone" do
    visit telefone_url(@telefone)
    click_on "Destroy this telefone", match: :first

    assert_text "Telefone was successfully destroyed"
  end
end
