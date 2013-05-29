require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { project_hometown: @project.project_hometown, project_info: @project.project_info, project_length: @project.project_length, project_name: @project.project_name, project_schedinfo: @project.project_schedinfo, project_start: @project.project_start, project_type: @project.project_type }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, id: @project, project: { project_hometown: @project.project_hometown, project_info: @project.project_info, project_length: @project.project_length, project_name: @project.project_name, project_schedinfo: @project.project_schedinfo, project_start: @project.project_start, project_type: @project.project_type }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
