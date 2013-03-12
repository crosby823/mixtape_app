require 'test_helper'

class SongGenresControllerTest < ActionController::TestCase
  setup do
    @song_genre = song_genres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_genres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_genre" do
    assert_difference('SongGenre.count') do
      post :create, song_genre: { genre_id: @song_genre.genre_id, song_id: @song_genre.song_id }
    end

    assert_redirected_to song_genre_path(assigns(:song_genre))
  end

  test "should show song_genre" do
    get :show, id: @song_genre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_genre
    assert_response :success
  end

  test "should update song_genre" do
    put :update, id: @song_genre, song_genre: { genre_id: @song_genre.genre_id, song_id: @song_genre.song_id }
    assert_redirected_to song_genre_path(assigns(:song_genre))
  end

  test "should destroy song_genre" do
    assert_difference('SongGenre.count', -1) do
      delete :destroy, id: @song_genre
    end

    assert_redirected_to song_genres_path
  end
end
