require 'rails_helper'

RSpec.describe "UsersLogins", type: :request do



  describe "GET /users_logins" do
    it "works! (now write some real specs)" do
      get login_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST #create" do


    context "login with invalid information" do
      it "should not work and should go back to the login form" do
        get login_path
        expect(response).to render_template(:new)
        post login_path, params: { session: {
          email:                "",
          password:             "",
        } }
        expect(response).to render_template(:new)
        expect(flash).to_not be(nil)
        # get root_path
        # expect(controller).to set_flash.be_nil
      end
    end

    context "login with valid information" do
      let!(:user) { create(:user) }

      it "should login and redirect to user screen" do
        get login_path
        expect(response).to render_template(:new)
        post login_path, params: { session: {
          email:                user.email,
          password:             user.password,
        } }
        expect(response).to redirect_to(user_path(user.id))
        expect(flash).to_not be(nil)
        expect(is_logged_in?).to be_truthy
        # get root_path
        # expect(controller).to set_flash.be_nil
      end
    end

    context "login with valid information then logout" do
      let!(:user) { create(:user) }

      it "should login, redirect to user screen then logout " do
        get login_path
        post login_path, params: { session: {
          email:                user.email,
          password:             user.password,
        } }
        expect(is_logged_in?).to be_truthy

        expect(response).to redirect_to(user_path(user.id))
        expect(flash).to_not be(nil)
        delete logout_path
        expect(is_logged_in?).to_not be_truthy
        expect(response).to redirect_to(root_path)


        # get root_path
        # expect(controller).to set_flash.be_nil
      end
    end

  end



end
