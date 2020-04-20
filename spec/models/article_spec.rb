require "rails_helper"

RSpec.describe Article, type: :model do
  describe "Database table" do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
  end

  describe 'Validates the presence' do
    it {is_expected.to validate_presence_of :title}
  end

  describe 'Factory' do
    it 'It should have a valid factory' do 
      expect(FactoryBot.create(:article)).to be_valid
    end
  end
end
