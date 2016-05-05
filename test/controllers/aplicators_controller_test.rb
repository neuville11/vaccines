require 'test_helper'

class AplicatorsControllerTest < ActionController::TestCase
  setup do
    @aplicator = aplicators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aplicators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aplicator" do
    assert_difference('Aplicator.count') do
      post :create, aplicator: { cedProf: @aplicator.cedProf, clinic: @aplicator.clinic, name: @aplicator.name, prefix: @aplicator.prefix }
    end

    assert_redirected_to aplicator_path(assigns(:aplicator))
  end

  test "should show aplicator" do
    get :show, id: @aplicator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aplicator
    assert_response :success
  end

  test "should update aplicator" do
    patch :update, id: @aplicator, aplicator: { cedProf: @aplicator.cedProf, clinic: @aplicator.clinic, name: @aplicator.name, prefix: @aplicator.prefix }
    assert_redirected_to aplicator_path(assigns(:aplicator))
  end

  test "should destroy aplicator" do
    assert_difference('Aplicator.count', -1) do
      delete :destroy, id: @aplicator
    end

    assert_redirected_to aplicators_path
  end
end
