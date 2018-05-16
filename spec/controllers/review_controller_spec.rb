# frozen_string_literal: true

require 'rails_helper'

describe ReviewController, type: :controller do
  let(:valid_session) { {} }

  describe 'GET #review' do
    subject(:get_review) { get :review, params: {}, session: valid_session }

    let!(:card) { create(:card) }

    it 'returns a success response' do
      get_review
      expect(response).to be_successful
    end

    it 'assigns an array of cards to `@queue`' do
      get_review
      expect(assigns(:queue)).to include(card)
    end

    it 'renders the review template' do
      get_review
      expect(response).to render_template(:review)
    end
  end
end
