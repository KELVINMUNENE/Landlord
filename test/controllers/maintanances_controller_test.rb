require 'test_helper'

class MaintanancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maintanance = maintanances(:one)
  end

  test "should get index" do
    get maintanances_url
    assert_response :success
  end

  test "should get new" do
    get new_maintanance_url
    assert_response :success
  end

  test "should create maintanance" do
    assert_difference('Maintanance.count') do
      post maintanances_url, params: { maintanance: {  } }
    end

    assert_redirected_to maintanance_url(Maintanance.last)
  end

  test "should show maintanance" do
    get maintanance_url(@maintanance)
    assert_response :success
  end

  test "should get edit" do
    get edit_maintanance_url(@maintanance)
    assert_response :success
  end

  test "should update maintanance" do
    patch maintanance_url(@maintanance), params: { maintanance: {  } }
    assert_redirected_to maintanance_url(@maintanance)
  end

  test "should destroy maintanance" do
    assert_difference('Maintanance.count', -1) do
      delete maintanance_url(@maintanance)
    end

    assert_redirected_to maintanances_url
  end
end
