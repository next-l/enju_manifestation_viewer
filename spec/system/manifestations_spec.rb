require 'rails_helper'

RSpec.describe 'Manifestations', type: :system do
  include Devise::Test::IntegrationHelpers
  fixtures :all
  before do
    @manifestation = FactoryBot.create(:manifestation)
    CarrierType.find_by(name: 'volume').attachment.attach(io: File.open("#{Rails.root.to_s}/app/assets/images/icons/book.png"), filename: 'attachment.png')
  end

  describe 'When logged in as Librarian' do
    before do
      sign_in users(:librarian1)
    end

    it 'should show default manifestation' do
      visit manifestation_path(@manifestation.id)
      expect(page).to have_content @manifestation.original_title
    end
  end

  describe 'When logged in as User' do
    before do
      sign_in users(:user1)
    end

    it 'should show default manifestation' do
      visit manifestation_path(@manifestation.id)
      expect(page).to have_content @manifestation.original_title
    end
  end

  describe 'When not logged in' do
    it 'should show default manifestation' do
      visit manifestation_path(@manifestation.id)
      expect(page).to have_content @manifestation.original_title
    end
  end
end
