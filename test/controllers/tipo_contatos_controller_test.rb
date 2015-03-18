require 'test_helper'

class TipoContatosControllerTest < ActionController::TestCase
  setup do
    @tipo_contato = tipo_contatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_contatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_contato" do
    assert_difference('TipoContato.count') do
      post :create, tipo_contato: { nome: @tipo_contato.nome, usuario_id: @tipo_contato.usuario_id }
    end

    assert_redirected_to tipo_contato_path(assigns(:tipo_contato))
  end

  test "should show tipo_contato" do
    get :show, id: @tipo_contato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_contato
    assert_response :success
  end

  test "should update tipo_contato" do
    patch :update, id: @tipo_contato, tipo_contato: { nome: @tipo_contato.nome, usuario_id: @tipo_contato.usuario_id }
    assert_redirected_to tipo_contato_path(assigns(:tipo_contato))
  end

  test "should destroy tipo_contato" do
    assert_difference('TipoContato.count', -1) do
      delete :destroy, id: @tipo_contato
    end

    assert_redirected_to tipo_contatos_path
  end
end
