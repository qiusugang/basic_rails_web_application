require 'test_helper'

class NetcarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @netcar = netcars(:one)
  end

  test "should get index" do
    get netcars_url, as: :json
    assert_response :success
  end

  test "should create netcar" do
    assert_difference('Netcar.count') do
      post netcars_url, params: { netcar: { car_name: @netcar.car_name, city_name: @netcar.city_name, detail_link: @netcar.detail_link, price: @netcar.price } }, as: :json
    end

    assert_response 201
  end

  test "should show netcar" do
    get netcar_url(@netcar), as: :json
    assert_response :success
  end

  test "should update netcar" do
    patch netcar_url(@netcar), params: { netcar: { car_name: @netcar.car_name, city_name: @netcar.city_name, detail_link: @netcar.detail_link, price: @netcar.price } }, as: :json
    assert_response 200
  end

  test "should destroy netcar" do
    assert_difference('Netcar.count', -1) do
      delete netcar_url(@netcar), as: :json
    end

    assert_response 204
  end
end
