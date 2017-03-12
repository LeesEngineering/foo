require 'test_helper'

class FoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foo = foos(:one)
  end

  test "should get index" do
    get foos_url, as: :json
    assert_response :success
  end

  test "should create foo" do
    assert_difference('Foo.count') do
      post foos_url, params: { foo: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show foo" do
    get foo_url(@foo), as: :json
    assert_response :success
  end

  test "should update foo" do
    patch foo_url(@foo), params: { foo: {  } }, as: :json
    assert_response 200
  end

  test "should destroy foo" do
    assert_difference('Foo.count', -1) do
      delete foo_url(@foo), as: :json
    end

    assert_response 204
  end
end
