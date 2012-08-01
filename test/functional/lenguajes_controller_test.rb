require 'test_helper'

class LenguajesControllerTest < ActionController::TestCase
  setup do
    @lenguaje = lenguajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lenguajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lenguaje" do
    assert_difference('Lenguaje.count') do
      post :create, lenguaje: @lenguaje.attributes
    end

    assert_redirected_to lenguaje_path(assigns(:lenguaje))
  end

  test "should show lenguaje" do
    get :show, id: @lenguaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lenguaje
    assert_response :success
  end

  test "should update lenguaje" do
    put :update, id: @lenguaje, lenguaje: @lenguaje.attributes
    assert_redirected_to lenguaje_path(assigns(:lenguaje))
  end

  test "should destroy lenguaje" do
    assert_difference('Lenguaje.count', -1) do
      delete :destroy, id: @lenguaje
    end

    assert_redirected_to lenguajes_path
  end
end
