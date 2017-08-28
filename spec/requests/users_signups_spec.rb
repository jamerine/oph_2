require 'rails_helper'

RSpec.describe "UsersSignups", type: :request do
  describe "GET /users_signups" do
    it "works! (now write some real specs)" do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end

  describe "signing up with invalid information" do
    it "should not work and should go back to the signup form" do
      get signup_path
      expect do
        post signup_path, params: { user: {
          first_name:            "",
          last_name:             "miki",
          email:                 "user@triculi",
          password:              "buajaja",
          password_confirmation: "juababa"
        } }
      end.to_not change{ User.count }
      expect(response).to render_template(:new)
      expect(response.body).to include('errors')
    end
  end

  describe "signing up with valid information" do
    it "should work and should redirect to user's show view" do
      get signup_path
      expect do
        post signup_path, params: { user: {
          first_name:            "Julito",
          last_name:             "Triculi",
          email:                 "triculito@mail.com",
          password:              "worldtriculi",
          password_confirmation: "worldtriculi"
        } }
      end.to change{ User.count }.from(0).to(1)
      expect(flash[:success]).to_not be(nil)
    end
  end


end
