require 'test_helper'

class EstoquesControllerTest < ActionController::TestCase
  setup do
    @estoque = estoques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estoques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estoque" do
    assert_difference('Estoque.count') do
      post :create, estoque: { fornecedor_id: @estoque.fornecedor_id, produto_id: @estoque.produto_id, quantidade_atual: @estoque.quantidade_atual, quantidade_comprada: @estoque.quantidade_comprada, saida_caixa_id: @estoque.saida_caixa_id, unidade_id: @estoque.unidade_id, usuario_id: @estoque.usuario_id, valor: @estoque.valor }
    end

    assert_redirected_to estoque_path(assigns(:estoque))
  end

  test "should show estoque" do
    get :show, id: @estoque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estoque
    assert_response :success
  end

  test "should update estoque" do
    patch :update, id: @estoque, estoque: { fornecedor_id: @estoque.fornecedor_id, produto_id: @estoque.produto_id, quantidade_atual: @estoque.quantidade_atual, quantidade_comprada: @estoque.quantidade_comprada, saida_caixa_id: @estoque.saida_caixa_id, unidade_id: @estoque.unidade_id, usuario_id: @estoque.usuario_id, valor: @estoque.valor }
    assert_redirected_to estoque_path(assigns(:estoque))
  end

  test "should destroy estoque" do
    assert_difference('Estoque.count', -1) do
      delete :destroy, id: @estoque
    end

    assert_redirected_to estoques_path
  end
end
