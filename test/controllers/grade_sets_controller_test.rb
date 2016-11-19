require 'test_helper'

class GradeSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade_set = grade_sets(:one)
  end

  test "should get index" do
    get grade_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_grade_set_url
    assert_response :success
  end

  test "should create grade_set" do
    assert_difference('GradeSet.count') do
      post grade_sets_url, params: { grade_set: { grade1: @grade_set.grade1, grade2: @grade_set.grade2, grade3: @grade_set.grade3, grade4: @grade_set.grade4, student_id: @grade_set.student_id, year: @grade_set.year } }
    end

    assert_redirected_to grade_set_url(GradeSet.last)
  end

  test "should show grade_set" do
    get grade_set_url(@grade_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_grade_set_url(@grade_set)
    assert_response :success
  end

  test "should update grade_set" do
    patch grade_set_url(@grade_set), params: { grade_set: { grade1: @grade_set.grade1, grade2: @grade_set.grade2, grade3: @grade_set.grade3, grade4: @grade_set.grade4, student_id: @grade_set.student_id, year: @grade_set.year } }
    assert_redirected_to grade_set_url(@grade_set)
  end

  test "should destroy grade_set" do
    assert_difference('GradeSet.count', -1) do
      delete grade_set_url(@grade_set)
    end

    assert_redirected_to grade_sets_url
  end
end
