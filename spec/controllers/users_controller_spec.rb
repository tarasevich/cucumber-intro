require 'spec_helper'

describe UsersController do
  it "maps users#index to /users" do
    {get: '/users'}.should route_to('users#index')
  end

  describe "GET /users" do
    let!(:user) { Factory :user }

    it "succeeds" do
      get :index
      response.should be_success
      response.should render_template 'index'
    end

    it "passes users to view" do
      get :index
      assigns(:users).should == [user]
    end
  end
end
