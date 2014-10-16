require 'test_helper'

class HeadphonesControllerTest < ActionController::TestCase
  setup do
    @headphone = headphones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headphones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create headphone" do
    assert_difference('Headphone.count') do
      post :create, headphone: { brand: @headphone.brand, model: @headphone.model, rating: @headphone.rating }
    end

    assert_redirected_to headphone_path(assigns(:headphone))
  end

  test "should show headphone" do
    get :show, id: @headphone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @headphone
    assert_response :success
  end

  test "should update headphone" do
    patch :update, id: @headphone, headphone: { brand: @headphone.brand, model: @headphone.model, rating: @headphone.rating }
    assert_redirected_to headphone_path(assigns(:headphone))
  end

  test "should destroy headphone" do
    assert_difference('Headphone.count', -1) do
      delete :destroy, id: @headphone
    end

    assert_redirected_to headphones_path
  end
end
