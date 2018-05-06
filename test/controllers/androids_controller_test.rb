require 'test_helper'

class AndroidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @android = androids(:one)
  end

  test "should get index" do
    get androids_url
    assert_response :success
  end

  test "should get new" do
    get new_android_url
    assert_response :success
  end

  test "should create android" do
    assert_difference('Android.count') do
      post androids_url, params: { android: { brand: @android.brand, camera: @android.camera, internal_memory: @android.internal_memory, mpixel: @android.mpixel, name: @android.name, no_of_sim_slots: @android.no_of_sim_slots, no_of_stock: @android.no_of_stock, size_of_screen: @android.size_of_screen, year_released: @android.year_released } }
    end

    assert_redirected_to android_url(Android.last)
  end

  test "should show android" do
    get android_url(@android)
    assert_response :success
  end

  test "should get edit" do
    get edit_android_url(@android)
    assert_response :success
  end

  test "should update android" do
    patch android_url(@android), params: { android: { brand: @android.brand, camera: @android.camera, internal_memory: @android.internal_memory, mpixel: @android.mpixel, name: @android.name, no_of_sim_slots: @android.no_of_sim_slots, no_of_stock: @android.no_of_stock, size_of_screen: @android.size_of_screen, year_released: @android.year_released } }
    assert_redirected_to android_url(@android)
  end

  test "should destroy android" do
    assert_difference('Android.count', -1) do
      delete android_url(@android)
    end

    assert_redirected_to androids_url
  end
end
