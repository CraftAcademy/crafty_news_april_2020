require "rails_helper"

feature "User can view a list of articles on the main page" do
  context "with articles in the database" do
    before do
      visit root_path
    end

    it "displays first article title" do
      expect(page).to have_content "Trump gets corona virus"
    end

    it "displays the second article" do
      expect(page).to have_content "Cure found for the corona virus"
    end
  end
end
