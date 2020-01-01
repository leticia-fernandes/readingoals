require 'test_helper'

class ReadingGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reading_goal = reading_goals(:one)
  end

  test "should get index" do
    get reading_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_reading_goal_url
    assert_response :success
  end

  test "should create reading_goal" do
    assert_difference('ReadingGoal.count') do
      post reading_goals_url, params: { reading_goal: { deadline: @reading_goal.deadline, number_pages: @reading_goal.number_pages, pages_per_day: @reading_goal.pages_per_day, title: @reading_goal.title } }
    end

    assert_redirected_to reading_goal_url(ReadingGoal.last)
  end

  test "should show reading_goal" do
    get reading_goal_url(@reading_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_reading_goal_url(@reading_goal)
    assert_response :success
  end

  test "should update reading_goal" do
    patch reading_goal_url(@reading_goal), params: { reading_goal: { deadline: @reading_goal.deadline, number_pages: @reading_goal.number_pages, pages_per_day: @reading_goal.pages_per_day, title: @reading_goal.title } }
    assert_redirected_to reading_goal_url(@reading_goal)
  end

  test "should destroy reading_goal" do
    assert_difference('ReadingGoal.count', -1) do
      delete reading_goal_url(@reading_goal)
    end

    assert_redirected_to reading_goals_url
  end
end
