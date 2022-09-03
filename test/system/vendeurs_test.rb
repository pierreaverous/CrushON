require "application_system_test_case"

class VendeursTest < ApplicationSystemTestCase
  setup do
    @vendeur = vendeurs(:one)
  end

  test "visiting the index" do
    visit vendeurs_url
    assert_selector "h1", text: "Vendeurs"
  end

  test "should create vendeur" do
    visit vendeurs_url
    click_on "New vendeur"

    fill_in "Email", with: @vendeur.email
    fill_in "Nameshop", with: @vendeur.nameshop
    click_on "Create Vendeur"

    assert_text "Vendeur was successfully created"
    click_on "Back"
  end

  test "should update Vendeur" do
    visit vendeur_url(@vendeur)
    click_on "Edit this vendeur", match: :first

    fill_in "Email", with: @vendeur.email
    fill_in "Nameshop", with: @vendeur.nameshop
    click_on "Update Vendeur"

    assert_text "Vendeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Vendeur" do
    visit vendeur_url(@vendeur)
    click_on "Destroy this vendeur", match: :first

    assert_text "Vendeur was successfully destroyed"
  end
end
