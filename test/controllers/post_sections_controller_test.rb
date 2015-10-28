require 'test_helper'

class PostSectionsControllerTest < ActionController::TestCase
  setup do
    @post_section = post_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_section" do
    assert_difference('PostSection.count') do
      post :create, post_section: {  }
    end

    assert_redirected_to post_section_path(assigns(:post_section))
  end

  test "should show post_section" do
    get :show, id: @post_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_section
    assert_response :success
  end

  test "should update post_section" do
    patch :update, id: @post_section, post_section: {  }
    assert_redirected_to post_section_path(assigns(:post_section))
  end

  test "should destroy post_section" do
    assert_difference('PostSection.count', -1) do
      delete :destroy, id: @post_section
    end

    assert_redirected_to post_sections_path
  end
end
