require 'rails_helper'

RSpec.describe 'LibraryGroups', type: :system do
  include Devise::Test::IntegrationHelpers
  fixtures :all

  describe 'When logged in as Librarian' do
    before do
      sign_in users(:admin)
    end

    it "renders selector for multilpe book jacket sources." do
      visit edit_library_group_path(LibraryGroup.first.id)
      expect(page).to have_selector "select#library_group_book_jacket_source"
      expect(page).to have_selector "select#library_group_book_jacket_source option", minimum: 2
      expect(page).to have_selector 'select#library_group_book_jacket_source option[value="google"]'
      expect(page).to have_selector 'select#library_group_book_jacket_source option[value="openbd"]'
      expect(page).to have_selector 'select#library_group_book_jacket_source option[value="hanmotocom"]'
    end
  end
end
