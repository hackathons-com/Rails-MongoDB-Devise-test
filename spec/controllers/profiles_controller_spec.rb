require 'rails_helper'

RSpec.describe ProfilesController, type: controller do

  describe "GET  #index" do

    # when not logged in
    it "should redirect to new user page" do
      get :index
      expect(response).to redirect_to(controller: "user_session", action: "new")
    end

    # when logged in
    it "should return current user" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      sign_in user
      assert_response :success
      puts @response
      assert_equal user.id, @response
    end

  end

  describe Show do

    test "should get show" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      get "/profiles/#{user.id}"
      assert_response :success
    end

  end

end
