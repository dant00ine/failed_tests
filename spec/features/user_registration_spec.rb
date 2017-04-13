require 'rails_helper'

feature 'User Registration' do

    context "valid attributes" do
        it "should allow creation of user" do
            visit '/users/new'
            fill_in 'username', with: "superstarninja"

            click_button 'create_user'

            expect(current_path).to eq('/messages')
            expect(page).to have_content("Welcome superstarninja")
        end
    end

    context "with invalid attributes" do
        it "should not allow for creation of user without username" do
            visit '/users/new'
            click_button 'create_user'

            expect(current_path).to eq('/users/new')
            expect(page).to have_content('is required')
        end
    end

end
