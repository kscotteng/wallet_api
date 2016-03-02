require 'test_helper'

class WalletapisControllerTest < ActionController::TestCase
  setup do
    @walletapi = walletapis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walletapis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walletapi" do
    assert_difference('Walletapi.count') do
      post :create, walletapi: { amount: @walletapi.amount, date: @walletapi.date, org: @walletapi.org }
    end

    assert_redirected_to walletapi_path(assigns(:walletapi))
  end

  test "should show walletapi" do
    get :show, id: @walletapi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walletapi
    assert_response :success
  end

  test "should update walletapi" do
    patch :update, id: @walletapi, walletapi: { amount: @walletapi.amount, date: @walletapi.date, org: @walletapi.org }
    assert_redirected_to walletapi_path(assigns(:walletapi))
  end

  test "should destroy walletapi" do
    assert_difference('Walletapi.count', -1) do
      delete :destroy, id: @walletapi
    end

    assert_redirected_to walletapis_path
  end
end
