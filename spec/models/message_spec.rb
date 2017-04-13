require 'rails_helper'

RSpec.describe Message, type: :model do

    context "with valid attributes" do
        it "should save with long enough content and user reference" do
            expect(build(:message)).to be_valid
        end
    end

    context "with invalid attributes" do
        it "should not allow save with too short of a message" do
            expect(build(:message, content: "hello!")).to be_invalid
        end
        it "should not allow save without user reference" do
            expect(build(:message, user: nil)).to be_invalid
        end
    end
end
