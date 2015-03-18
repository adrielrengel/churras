require 'test_helper'

class EntradasCaixaControllerTest < ActionController::TestCase
  setup do
    @entrada_caixa = entradas_caixa(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entradas_caixa)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrada_caixa" do
    assert_difference('EntradaCaixa.count') do
      post :create, entrada_caixa: { forma_pagamento_id: @entrada_caixa.forma_pagamento_id, observacao: @entrada_caixa.observacao, pedido_id: @entrada_caixa.pedido_id, usuario_id: @entrada_caixa.usuario_id, valor: @entrada_caixa.valor }
    end

    assert_redirected_to entrada_caixa_path(assigns(:entrada_caixa))
  end

  test "should show entrada_caixa" do
    get :show, id: @entrada_caixa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrada_caixa
    assert_response :success
  end

  test "should update entrada_caixa" do
    patch :update, id: @entrada_caixa, entrada_caixa: { forma_pagamento_id: @entrada_caixa.forma_pagamento_id, observacao: @entrada_caixa.observacao, pedido_id: @entrada_caixa.pedido_id, usuario_id: @entrada_caixa.usuario_id, valor: @entrada_caixa.valor }
    assert_redirected_to entrada_caixa_path(assigns(:entrada_caixa))
  end

  test "should destroy entrada_caixa" do
    assert_difference('EntradaCaixa.count', -1) do
      delete :destroy, id: @entrada_caixa
    end

    assert_redirected_to entradas_caixa_path
  end
end
