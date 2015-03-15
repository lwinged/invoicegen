require 'test_helper'

class FreelancersControllerTest < ActionController::TestCase
  setup do
    @freelancer = freelancers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freelancers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freelancer" do
    assert_difference('Freelancer.count') do
      post :create, freelancer: { email: @freelancer.email, firstname: @freelancer.firstname, name: @freelancer.name }
    end

    assert_redirected_to freelancer_path(assigns(:freelancer))
  end

  test "should show freelancer" do
    get :show, id: @freelancer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freelancer
    assert_response :success
  end

  test "should update freelancer" do
    patch :update, id: @freelancer, freelancer: { email: @freelancer.email, firstname: @freelancer.firstname, name: @freelancer.name }
    assert_redirected_to freelancer_path(assigns(:freelancer))
  end

  test "should destroy freelancer" do
    assert_difference('Freelancer.count', -1) do
      delete :destroy, id: @freelancer
    end

    assert_redirected_to freelancers_path
  end
end
