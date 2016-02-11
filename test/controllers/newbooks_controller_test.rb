require 'test_helper'

class NewbooksControllerTest < ActionController::TestCase
  setup do
    @newbook = newbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newbook" do
    assert_difference('Newbook.count') do
      post :create, newbook: { Author: @newbook.Author, Name: @newbook.Name }
    end

    assert_redirected_to newbook_path(assigns(:newbook))
  end

  test "should show newbook" do
    get :show, id: @newbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newbook
    assert_response :success
  end

  test "should update newbook" do
    patch :update, id: @newbook, newbook: { Author: @newbook.Author, Name: @newbook.Name }
    assert_redirected_to newbook_path(assigns(:newbook))
  end

  test "should destroy newbook" do
    assert_difference('Newbook.count', -1) do
      delete :destroy, id: @newbook
    end

    assert_redirected_to newbooks_path
  end
end
