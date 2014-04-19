require 'test_helper'

class ArtobjectsControllerTest < ActionController::TestCase
  setup do
    @artobject = artobjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artobjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artobject" do
    assert_difference('Artobject.count') do
      post :create, artobject: { description: @artobject.description, name: @artobject.name, picture: @artobject.picture, user_id: @artobject.user_id }
    end

    assert_redirected_to artobject_path(assigns(:artobject))
  end

  test "should show artobject" do
    get :show, id: @artobject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artobject
    assert_response :success
  end

  test "should update artobject" do
    patch :update, id: @artobject, artobject: { description: @artobject.description, name: @artobject.name, picture: @artobject.picture, user_id: @artobject.user_id }
    assert_redirected_to artobject_path(assigns(:artobject))
  end

  test "should destroy artobject" do
    assert_difference('Artobject.count', -1) do
      delete :destroy, id: @artobject
    end

    assert_redirected_to artobjects_path
  end
end
