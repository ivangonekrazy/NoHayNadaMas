require 'test_helper'

class NadasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nada" do
    assert_difference('Nada.count') do
      post :create, :nada => { }
    end

    assert_redirected_to nada_path(assigns(:nada))
  end

  test "should show nada" do
    get :show, :id => nadas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => nadas(:one).to_param
    assert_response :success
  end

  test "should update nada" do
    put :update, :id => nadas(:one).to_param, :nada => { }
    assert_redirected_to nada_path(assigns(:nada))
  end

  test "should destroy nada" do
    assert_difference('Nada.count', -1) do
      delete :destroy, :id => nadas(:one).to_param
    end

    assert_redirected_to nadas_path
  end
end
