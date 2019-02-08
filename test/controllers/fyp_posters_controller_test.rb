require 'test_helper'

class FypPostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fyp_poster = fyp_posters(:one)
  end

  test "should get index" do
    get fyp_posters_url
    assert_response :success
  end

  test "should get new" do
    get new_fyp_poster_url
    assert_response :success
  end

  test "should create fyp_poster" do
    assert_difference('FypPoster.count') do
      post fyp_posters_url, params: { fyp_poster: { moderator_name: @fyp_poster.moderator_name, p_id: @fyp_poster.p_id, p_title: @fyp_poster.p_title, student_id: @fyp_poster.student_id, student_name: @fyp_poster.student_name, supervisor_name: @fyp_poster.supervisor_name } }
    end

    assert_redirected_to fyp_poster_url(FypPoster.last)
  end

  test "should show fyp_poster" do
    get fyp_poster_url(@fyp_poster)
    assert_response :success
  end

  test "should get edit" do
    get edit_fyp_poster_url(@fyp_poster)
    assert_response :success
  end

  test "should update fyp_poster" do
    patch fyp_poster_url(@fyp_poster), params: { fyp_poster: { moderator_name: @fyp_poster.moderator_name, p_id: @fyp_poster.p_id, p_title: @fyp_poster.p_title, student_id: @fyp_poster.student_id, student_name: @fyp_poster.student_name, supervisor_name: @fyp_poster.supervisor_name } }
    assert_redirected_to fyp_poster_url(@fyp_poster)
  end

  test "should destroy fyp_poster" do
    assert_difference('FypPoster.count', -1) do
      delete fyp_poster_url(@fyp_poster)
    end

    assert_redirected_to fyp_posters_url
  end
end
