require 'test_helper'

class RuasControllerTest < ActionController::TestCase
  setup do
    @rua = ruas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rua" do
    assert_difference('Rua.count') do
      post :create, rua: { cidade_id: @rua.cidade_id, nome: @rua.nome, usuario_id: @rua.usuario_id }
    end

    assert_redirected_to rua_path(assigns(:rua))
  end

  test "should show rua" do
    get :show, id: @rua
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rua
    assert_response :success
  end

  test "should update rua" do
    patch :update, id: @rua, rua: { cidade_id: @rua.cidade_id, nome: @rua.nome, usuario_id: @rua.usuario_id }
    assert_redirected_to rua_path(assigns(:rua))
  end

  test "should destroy rua" do
    assert_difference('Rua.count', -1) do
      delete :destroy, id: @rua
    end

    assert_redirected_to ruas_path
  end
end
