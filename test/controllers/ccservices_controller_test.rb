require "test_helper"

class CcservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ccservice = ccservices(:one)
  end

  test "should get index" do
    get ccservices_url
    assert_response :success
  end

  test "should get new" do
    get new_ccservice_url
    assert_response :success
  end

  test "should create ccservice" do
    assert_difference('Ccservice.count') do
      post ccservices_url, params: { ccservice: { body: @ccservice.body, ccimg1: @ccservice.ccimg1, slug: @ccservice.slug, subtitle: @ccservice.subtitle, title: @ccservice.title } }
    end

    assert_redirected_to ccservice_url(Ccservice.last)
  end

  test "should show ccservice" do
    get ccservice_url(@ccservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_ccservice_url(@ccservice)
    assert_response :success
  end

  test "should update ccservice" do
    patch ccservice_url(@ccservice), params: { ccservice: { body: @ccservice.body, ccimg1: @ccservice.ccimg1, slug: @ccservice.slug, subtitle: @ccservice.subtitle, title: @ccservice.title } }
    assert_redirected_to ccservice_url(@ccservice)
  end

  test "should destroy ccservice" do
    assert_difference('Ccservice.count', -1) do
      delete ccservice_url(@ccservice)
    end

    assert_redirected_to ccservices_url
  end
end
