require "rails_helper"

feature "User can create articles" do
  before do
    visit root_path
    click_on "New Article"
  end

  context "User can successfully create an article" do
    before do
      fill_in "Title", with: "Tesla has dropped it's new truck the laser truck"
      fill_in "Content", with: "Has musk gone mad? Or is this the first steps of world domination??"
      click_on "Create Article"
    end

    it "User should see a success message" do
      expect(page).to have_content "Article was created"
    end

  end
end
