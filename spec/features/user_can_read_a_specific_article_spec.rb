require "rails_helper"

feature "User can read a specific artilce" do
  before do
    create(:article, title: "Rick and morty back on tv", content: "Best show on tv is back!")
    create(:article, title: "Days of our lives", content: "Second best show on TV")
    visit root_path
    click_on "Rick and morty back on tv"
  end

  context "Display specific article" do
    it "should display title" do
      expect(page).to have_content "Rick and morty back on tv"
    end

    it "Article should have specific content" do
      expect(page).to have_content "Best show on tv is back!"
    end
  end
end
