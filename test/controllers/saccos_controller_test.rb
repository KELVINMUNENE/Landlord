require 'test_helper'

class SaccosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sacco = saccos(:one)
  end

  test "should get index" do
    get saccos_url
    assert_response :success
  end

  test "should get new" do
    get new_sacco_url
    assert_response :success
  end

  test "should create sacco" do
    assert_difference('Sacco.count') do
      post saccos_url, params: { sacco: {  } }
    end

    assert_redirected_to sacco_url(Sacco.last)
  end

  test "should show sacco" do
    get sacco_url(@sacco)
    assert_response :success
  end

  test "should get edit" do
    get edit_sacco_url(@sacco)
    assert_response :success
  end

  test "should update sacco" do
    patch sacco_url(@sacco), params: { sacco: {  } }
    assert_redirected_to sacco_url(@sacco)
  end

  test "should destroy sacco" do
    assert_difference('Sacco.count', -1) do
      delete sacco_url(@sacco)
    end

    assert_redirected_to saccos_url
  end
end
