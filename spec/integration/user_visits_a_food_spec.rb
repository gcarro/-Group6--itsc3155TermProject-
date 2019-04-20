require 'rails_helper.rb'

feature "User sees the home page" do
    scenario "User successfully navigates to home page" do
        visit "/index"
        expect(page).to have_content("Express Line")
    end
    scenario "User can see the datailed page for chick-fil-a" do
         visit "/reviews/show"
         expect(page).to have_content("Express Line")
    end
end

