require 'test_helper'

class FormasPagamentoControllerTest < ActionController::TestCase
  setup do
    @forma_pagamento = formas_pagamento(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formas_pagamento)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forma_pagamento" do
    assert_difference('FormaPagamento.count') do
      post :create, forma_pagamento: { nome: @forma_pagamento.nome, situacao: @forma_pagamento.situacao, usuario_id: @forma_pagamento.usuario_id }
    end

    assert_redirected_to forma_pagamento_path(assigns(:forma_pagamento))
  end

  test "should show forma_pagamento" do
    get :show, id: @forma_pagamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forma_pagamento
    assert_response :success
  end

  test "should update forma_pagamento" do
    patch :update, id: @forma_pagamento, forma_pagamento: { nome: @forma_pagamento.nome, situacao: @forma_pagamento.situacao, usuario_id: @forma_pagamento.usuario_id }
    assert_redirected_to forma_pagamento_path(assigns(:forma_pagamento))
  end

  test "should destroy forma_pagamento" do
    assert_difference('FormaPagamento.count', -1) do
      delete :destroy, id: @forma_pagamento
    end

    assert_redirected_to formas_pagamento_path
  end
end
