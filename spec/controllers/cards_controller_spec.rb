# frozen_string_literal: true

require 'rails_helper'

describe CardsController, type: :controller do
  let(:valid_session) { {} }

  let!(:card) { create(:card) }

  describe 'GET #index' do
    subject(:get_index) { get :index, params: {}, session: valid_session }

    it 'returns a success response' do
      get_index
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    subject(:get_new) { get :new, params: {}, session: valid_session }

    it 'returns a success response' do
      get_new
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    subject(:post_create) do
      post :create, params: { card: attributes }, session: valid_session
    end

    let(:attributes) do
      { question: 'Is that a question?', answer: 'That is an answer.' }
    end

    context 'with valid params' do
      it 'creates a new Card' do
        expect { post_create }.to change(Card, :count).by(1)
      end

      it 'redirects to the created card' do
        post_create
        expect(response).to redirect_to(Card.last)
      end
    end

    context 'with invalid params' do
      let(:attributes) { { question: '', answer: '' } }

      it 'does not create a new Card' do
        expect { post_create }.not_to change(Card, :count)
      end

      it "returns a success response (i.e. to display the 'new' template)" do
        post_create
        expect(response).to be_successful
      end
    end
  end
end
