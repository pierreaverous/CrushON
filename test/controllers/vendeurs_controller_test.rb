require "test_helper"

class VendeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendeur = vendeurs(:one)
  end

  test "should get index" do
    get vendeurs_url
    assert_response :success
  end

  test "should get new" do
    get new_vendeur_url
    assert_response :success
  end

  test "should create vendeur" do
    assert_difference("Vendeur.count") do
      post vendeurs_url, params: { vendeur: { email: @vendeur.email, nameshop: @vendeur.nameshop } }
    end

    assert_redirected_to vendeur_url(Vendeur.last)
  end

  test "should show vendeur" do
    get vendeur_url(@vendeur)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendeur_url(@vendeur)
    assert_response :success
  end

  test "should update vendeur" do
    patch vendeur_url(@vendeur), params: { vendeur: { email: @vendeur.email, nameshop: @vendeur.nameshop } }
    assert_redirected_to vendeur_url(@vendeur)
  end

  test "should destroy vendeur" do
    assert_difference("Vendeur.count", -1) do
      delete vendeur_url(@vendeur)
    end

    assert_redirected_to vendeurs_url
  end
end
