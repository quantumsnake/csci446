require 'test_helper'

class WorldArticlesControllerTest < ActionController::TestCase
  setup do
    @world_article = world_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:world_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create world_article" do
    assert_difference('WorldArticle.count') do
      post :create, world_article: @world_article.attributes
    end

    assert_redirected_to world_article_path(assigns(:world_article))
  end

  test "should show world_article" do
    get :show, id: @world_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @world_article
    assert_response :success
  end

  test "should update world_article" do
    put :update, id: @world_article, world_article: @world_article.attributes
    assert_redirected_to world_article_path(assigns(:world_article))
  end

  test "should destroy world_article" do
    assert_difference('WorldArticle.count', -1) do
      delete :destroy, id: @world_article
    end

    assert_redirected_to world_articles_path
  end
end
