require 'test_helper'

class DutyNursesControllerTest < ActionController::TestCase
  setup do
    @duty_nurse = duty_nurses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duty_nurses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duty_nurse" do
    assert_difference('DutyNurse.count') do
      post :create, duty_nurse: { duty_id: @duty_nurse.duty_id, nurse_id: @duty_nurse.nurse_id }
    end

    assert_redirected_to duty_nurse_path(assigns(:duty_nurse))
  end

  test "should show duty_nurse" do
    get :show, id: @duty_nurse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duty_nurse
    assert_response :success
  end

  test "should update duty_nurse" do
    patch :update, id: @duty_nurse, duty_nurse: { duty_id: @duty_nurse.duty_id, nurse_id: @duty_nurse.nurse_id }
    assert_redirected_to duty_nurse_path(assigns(:duty_nurse))
  end

  test "should destroy duty_nurse" do
    assert_difference('DutyNurse.count', -1) do
      delete :destroy, id: @duty_nurse
    end

    assert_redirected_to duty_nurses_path
  end
end
