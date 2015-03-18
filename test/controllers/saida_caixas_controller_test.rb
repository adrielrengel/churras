require 'test_helper'

class SaidaCaixasControllerTest < ActionController::TestCase
  setup do
    @saida_caixa = saida_caixas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saida_caixas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saida_caixa" do
    assert_difference('SaidaCaixa.count') do
      post :create, saida_caixa: { data: @saida_caixa.data, observacao: @saida_caixa.observacao, tipo: @saida_caixa.tipo, usuario_id: @saida_caixa.usuario_id }
    end

    assert_redirected_to saida_caixa_path(assigns(:saida_caixa))
  end

  test "should show saida_caixa" do
    get :show, id: @saida_caixa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saida_caixa
    assert_response :success
  end

  test "should update saida_caixa" do
    patch :update, id: @saida_caixa, saida_caixa: { data: @saida_caixa.data, observacao: @saida_caixa.observacao, tipo: @saida_caixa.tipo, usuario_id: @saida_caixa.usuario_id }
    assert_redirected_to saida_caixa_path(assigns(:saida_caixa))
  end

  test "should destroy saida_caixa" do
    assert_difference('SaidaCaixa.count', -1) do
      delete :destroy, id: @saida_caixa
    end

    assert_redirected_to saida_caixas_path
  end
end
