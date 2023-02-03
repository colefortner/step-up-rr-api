require "test_helper"

class ConnectionTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connection_test = connection_tests(:one)
  end

  test "should get index" do
    get connection_tests_url, as: :json
    assert_response :success
  end

  test "should create connection_test" do
    assert_difference("ConnectionTest.count") do
      post connection_tests_url, params: { connection_test: { title: @connection_test.title } }, as: :json
    end

    assert_response :created
  end

  test "should show connection_test" do
    get connection_test_url(@connection_test), as: :json
    assert_response :success
  end

  test "should update connection_test" do
    patch connection_test_url(@connection_test), params: { connection_test: { title: @connection_test.title } }, as: :json
    assert_response :success
  end

  test "should destroy connection_test" do
    assert_difference("ConnectionTest.count", -1) do
      delete connection_test_url(@connection_test), as: :json
    end

    assert_response :no_content
  end
end
