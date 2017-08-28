require 'rails_helper'

RSpec.describe User, type: :model do
  # Association tests


  # Validation tests
  # ensure columns are present before saving
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:role) }




  describe "User" do
    let!(:user) { create(:user) }

    it "is valid with a first name, last name, email" do
      expect(user).to be_valid
    end

    it "is invalid with first name too long" do
      user.first_name = Faker::Lorem.characters(51)
      expect(user).not_to be_valid
    end

    it "is invalid with last name too long" do
      user.last_name = Faker::Lorem.characters(51)
      expect(user).not_to be_valid
    end

    it "is invalid with email too long" do
      user.email = Faker::Lorem.characters(260)
      expect(user).not_to be_valid
    end

    it "is invalid with no role" do
      user.role = nil
      expect(user).not_to be_valid
    end

    it "email address should be unique" do
      dup_user = user.dup
      dup_user.email = user.email.upcase
      expect(dup_user).not_to be_valid
    end

    it "email addresses should be saved as lower-case" do
      mixed_case_email = "Foo@ExAMPle.CoM"
      user.email = mixed_case_email
      user.save
      expect(mixed_case_email.downcase).to eq(user.reload.email)
    end

    it "first name should be saved as titleize" do
      mixed_case_first_name = "TeSt"
      user.first_name = mixed_case_first_name
      user.save
      expect(mixed_case_first_name.titleize).to eq(user.reload.first_name)
    end

    it "last name should be saved as titleize" do
      mixed_case_last_name = "LAsT"
      user.last_name = mixed_case_last_name
      user.save
      expect(mixed_case_last_name.titleize).to eq(user.reload.last_name)
    end

    it "password should be present (nonblank)" do
      user.password = user.password_confirmation = " " * 8
      expect(user).not_to be_valid
    end

    it "password should have a minimum length" do
      user.password = user.password_confirmation = "a" * 5
      expect(user).not_to be_valid
    end


  end





end
