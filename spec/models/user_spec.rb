require 'rails_helper'

RSpec.describe User, type: :model do

    context "With valid attributes" do
        it "should allow for user creation" do
            expect(build(:user)).to be_valid
        end
    end

    context "With invalid attributes" do
        it "should not allow for user creation with empty username" do
            expect(build(:user, username: "")).to be_invalid
        end
        it "should not allow for too short of a username" do
            expect(build(:user, username: "1234"))
        end
    end

end
