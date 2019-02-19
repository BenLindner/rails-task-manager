require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get tasks" do
    get tasks_tasks_url
    assert_response :success
  end

  test "should get add" do
    get tasks_add_url
    assert_response :success
  end

  test "should get edit" do
    get tasks_edit_url
    assert_response :success
  end

  test "should get details" do
    get tasks_details_url
    assert_response :success
  end

end
