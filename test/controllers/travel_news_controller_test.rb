require 'test_helper'

class TravelNewsControllerTest < ActionController::TestCase
  setup do
    @travel_news = travel_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_news" do
    assert_difference('TravelNew.count') do
      post :create, travel_news: { content: @travel_news.content, title: @travel_news.title, writer: @travel_news.writer }
    end

    assert_redirected_to travel_news_path(assigns(:travel_news))
  end

  test "should show travel_news" do
    get :show, id: @travel_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_news
    assert_response :success
  end

  test "should update travel_news" do
    patch :update, id: @travel_news, travel_news: { content: @travel_news.content, title: @travel_news.title, writer: @travel_news.writer }
    assert_redirected_to travel_news_path(assigns(:travel_news))
  end

  test "should destroy travel_news" do
    assert_difference('TravelNew.count', -1) do
      delete :destroy, id: @travel_news
    end

    assert_redirected_to travel_news_path
  end
end
