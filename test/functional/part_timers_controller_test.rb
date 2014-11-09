require 'test_helper'

class PartTimersControllerTest < ActionController::TestCase
  setup do
    @part_timer = part_timers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_timers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_timer" do
    assert_difference('PartTimer.count') do
      post :create, part_timer: { alternate_email: @part_timer.alternate_email, first_name: @part_timer.first_name, fy_hours: @part_timer.fy_hours, havic_userID: @part_timer.havic_userID, job_title: @part_timer.job_title, last_name: @part_timer.last_name, level: @part_timer.level, lui_username: @part_timer.lui_username, pennkey: @part_timer.pennkey }
    end

    assert_redirected_to part_timer_path(assigns(:part_timer))
  end

  test "should show part_timer" do
    get :show, id: @part_timer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_timer
    assert_response :success
  end

  test "should update part_timer" do
    put :update, id: @part_timer, part_timer: { alternate_email: @part_timer.alternate_email, first_name: @part_timer.first_name, fy_hours: @part_timer.fy_hours, havic_userID: @part_timer.havic_userID, job_title: @part_timer.job_title, last_name: @part_timer.last_name, level: @part_timer.level, lui_username: @part_timer.lui_username, pennkey: @part_timer.pennkey }
    assert_redirected_to part_timer_path(assigns(:part_timer))
  end

  test "should destroy part_timer" do
    assert_difference('PartTimer.count', -1) do
      delete :destroy, id: @part_timer
    end

    assert_redirected_to part_timers_path
  end
end
