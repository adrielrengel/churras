require 'test_helper'

class PessoaJuridicasControllerTest < ActionController::TestCase
  setup do
    @pessoa_juridica = pessoa_juridicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoa_juridicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa_juridica" do
    assert_difference('PessoaJuridica.count') do
      post :create, pessoa_juridica: { cliente_id: @pessoa_juridica.cliente_id, cnpj: @pessoa_juridica.cnpj, razao_social: @pessoa_juridica.razao_social, usuario_id: @pessoa_juridica.usuario_id }
    end

    assert_redirected_to pessoa_juridica_path(assigns(:pessoa_juridica))
  end

  test "should show pessoa_juridica" do
    get :show, id: @pessoa_juridica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa_juridica
    assert_response :success
  end

  test "should update pessoa_juridica" do
    patch :update, id: @pessoa_juridica, pessoa_juridica: { cliente_id: @pessoa_juridica.cliente_id, cnpj: @pessoa_juridica.cnpj, razao_social: @pessoa_juridica.razao_social, usuario_id: @pessoa_juridica.usuario_id }
    assert_redirected_to pessoa_juridica_path(assigns(:pessoa_juridica))
  end

  test "should destroy pessoa_juridica" do
    assert_difference('PessoaJuridica.count', -1) do
      delete :destroy, id: @pessoa_juridica
    end

    assert_redirected_to pessoa_juridicas_path
  end
end
