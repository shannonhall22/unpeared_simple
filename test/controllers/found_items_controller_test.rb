require 'test_helper'

class FoundItemsControllerTest < ActionController::TestCase
  setup do
    @found_item = found_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:found_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create found_item" do
    assert_difference('FoundItem.count') do
      post :create, found_item: { category: @found_item.category, desc: @found_item.desc, image1: @found_item.image1, image2: @found_item.image2, image3: @found_item.image3, name: @found_item.name }
    end

    assert_redirected_to found_item_path(assigns(:found_item))
  end

  test "should show found_item" do
    get :show, id: @found_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @found_item
    assert_response :success
  end

  test "should update found_item" do
    patch :update, id: @found_item, found_item: { category: @found_item.category, desc: @found_item.desc, image1: @found_item.image1, image2: @found_item.image2, image3: @found_item.image3, name: @found_item.name }
    assert_redirected_to found_item_path(assigns(:found_item))
  end

  test "should destroy found_item" do
    assert_difference('FoundItem.count', -1) do
      delete :destroy, id: @found_item
    end

    assert_redirected_to found_items_path
  end
end
