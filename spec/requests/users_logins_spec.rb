require 'rails_helper'

RSpec.describe "UsersLogins", type: :request do
  describe "GET /users_logins" do
    it "works! (now write some real specs)" do
      get login_path
      expect(response).to have_http_status(200)
    end
  end

  describe "login with invalid information" do
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


end
