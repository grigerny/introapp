require 'test_helper'

class IntrosControllerTest < ActionController::TestCase
  setup do
    @intro = intros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intro" do
    assert_difference('Intro.count') do
      post :create, intro: {  }
    end

    assert_redirected_to intro_path(assigns(:intro))
  end

  test "should show intro" do
    get :show, id: @intro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intro
    assert_response :success
  end

  test "should update intro" do
    patch :update, id: @intro, intro: {  }
    assert_redirected_to intro_path(assigns(:intro))
  end

  test "should destroy intro" do
    assert_difference('Intro.count', -1) do
      delete :destroy, id: @intro
    end

    assert_redirected_to intros_path
  end
end
