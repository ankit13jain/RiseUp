require 'test_helper'

class CharityOraganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_oraganization = charity_oraganizations(:one)
  end

  test "should get index" do
    get charity_oraganizations_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_oraganization_url
    assert_response :success
  end

  test "should create charity_oraganization" do
    assert_difference('CharityOraganization.count') do
      post charity_oraganizations_url, params: { charity_oraganization: { name: @charity_oraganization.name } }
    end

    assert_redirected_to charity_oraganization_url(CharityOraganization.last)
  end

  test "should show charity_oraganization" do
    get charity_oraganization_url(@charity_oraganization)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_oraganization_url(@charity_oraganization)
    assert_response :success
  end

  test "should update charity_oraganization" do
    patch charity_oraganization_url(@charity_oraganization), params: { charity_oraganization: { name: @charity_oraganization.name } }
    assert_redirected_to charity_oraganization_url(@charity_oraganization)
  end

  test "should destroy charity_oraganization" do
    assert_difference('CharityOraganization.count', -1) do
      delete charity_oraganization_url(@charity_oraganization)
    end

    assert_redirected_to charity_oraganizations_url
  end
end
