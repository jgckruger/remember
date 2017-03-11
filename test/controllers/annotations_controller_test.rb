require 'test_helper'

class AnnotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annotation = annotations(:one)
  end

  test "should get index" do
    get annotations_url
    assert_response :success
  end

  test "should get new" do
    get new_annotation_url
    assert_response :success
  end

  test "should create annotation" do
    assert_difference('Annotation.count') do
      post annotations_url, params: { annotation: { body: @annotation.body, title: @annotation.title } }
    end

    assert_redirected_to annotation_url(Annotation.last)
  end

  test "should show annotation" do
    get annotation_url(@annotation)
    assert_response :success
  end

  test "should get edit" do
    get edit_annotation_url(@annotation)
    assert_response :success
  end

  test "should update annotation" do
    patch annotation_url(@annotation), params: { annotation: { body: @annotation.body, title: @annotation.title } }
    assert_redirected_to annotation_url(@annotation)
  end

  test "should destroy annotation" do
    assert_difference('Annotation.count', -1) do
      delete annotation_url(@annotation)
    end

    assert_redirected_to annotations_url
  end
end
