require 'test_helper'

class GeekWomenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geek_woman = geek_women(:one)
  end

  test "should get index" do
    get geek_women_url
    assert_response :success
  end

  test "should get new" do
    get new_geek_woman_url
    assert_response :success
  end

  test "should create geek_woman" do
    assert_difference('GeekWoman.count') do
      post geek_women_url, params: { geek_woman: { message: @geek_woman.message, name: @geek_woman.name, picture: @geek_woman.picture } }
    end

    assert_redirected_to geek_woman_url(GeekWoman.last)
  end

  test "should show geek_woman" do
    get geek_woman_url(@geek_woman)
    assert_response :success
  end

  test "should get edit" do
    get edit_geek_woman_url(@geek_woman)
    assert_response :success
  end

  test "should update geek_woman" do
    patch geek_woman_url(@geek_woman), params: { geek_woman: { message: @geek_woman.message, name: @geek_woman.name, picture: @geek_woman.picture } }
    assert_redirected_to geek_woman_url(@geek_woman)
  end

  test "should destroy geek_woman" do
    assert_difference('GeekWoman.count', -1) do
      delete geek_woman_url(@geek_woman)
    end

    assert_redirected_to geek_women_url
  end
end
