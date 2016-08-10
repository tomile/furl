require 'test_helper'

class AgentsControllerTest < ActionController::TestCase
  setup do
    @agent = agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agent" do
    assert_difference('Agent.count') do
      post :create, agent: { bio: @agent.bio, count_click_to_accept: @agent.count_click_to_accept, count_click_to_contact: @agent.count_click_to_contact, count_closed: @agent.count_closed, email: @agent.email, first_name: @agent.first_name, last_name: @agent.last_name, middle_name: @agent.middle_name, phone: @agent.phone, picture: @agent.picture, website: @agent.website }
    end

    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should show agent" do
    get :show, id: @agent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agent
    assert_response :success
  end

  test "should update agent" do
    patch :update, id: @agent, agent: { bio: @agent.bio, count_click_to_accept: @agent.count_click_to_accept, count_click_to_contact: @agent.count_click_to_contact, count_closed: @agent.count_closed, email: @agent.email, first_name: @agent.first_name, last_name: @agent.last_name, middle_name: @agent.middle_name, phone: @agent.phone, picture: @agent.picture, website: @agent.website }
    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should destroy agent" do
    assert_difference('Agent.count', -1) do
      delete :destroy, id: @agent
    end

    assert_redirected_to agents_path
  end
end
