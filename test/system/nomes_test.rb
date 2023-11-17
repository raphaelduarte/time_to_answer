require "application_system_test_case"

class NomesTest < ApplicationSystemTestCase
  setup do
    @nome = nomes(:one)
  end

  test "visiting the index" do
    visit nomes_url
    assert_selector "h1", text: "Nomes"
  end

  test "should create nome" do
    visit nomes_url
    click_on "New nome"

    fill_in "Nome", with: @nome.nome
    fill_in "Sobrenome", with: @nome.sobrenome
    click_on "Create Nome"

    assert_text "Nome was successfully created"
    click_on "Back"
  end

  test "should update Nome" do
    visit nome_url(@nome)
    click_on "Edit this nome", match: :first

    fill_in "Nome", with: @nome.nome
    fill_in "Sobrenome", with: @nome.sobrenome
    click_on "Update Nome"

    assert_text "Nome was successfully updated"
    click_on "Back"
  end

  test "should destroy Nome" do
    visit nome_url(@nome)
    click_on "Destroy this nome", match: :first

    assert_text "Nome was successfully destroyed"
  end
end
