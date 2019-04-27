require 'rails_helper'

RSpec.describe IiifImagesController, type: :controller do
  fixtures :all

  describe 'GET show' do
    before(:each) do
      @manifestation = manifestations(:manifestation_00001)
    end

    describe 'When not logged in' do
      it 'assigns the requested agent as @agent' do
        get :show, params: { id: @manifestation.id }, format: :json
        expect(assigns(:manifestation)).to eq(@manifestation)
        expect(response).to be_successful
      end
    end
  end
end
