# frozen_string_literal: true

require 'rails_helper'

describe ReviewController, type: :controller do
  let(:valid_session) { {} }

  describe 'GET #index' do
    subject(:get_index) { get :index, params: {}, session: valid_session }

    it 'returns a success response' do
      get_index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get_index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #queue' do
    subject(:get_queue) { get :queue, format: :json, params: {}, session: valid_session }

    let!(:card) { create(:card) }

    it 'assigns an array of cards to `@queue`' do
      get_queue
      expect(assigns(:queue)).to include(card)
    end
  end
end
