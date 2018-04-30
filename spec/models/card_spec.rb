# frozen_string_literal: true

require 'rails_helper'

describe Card, type: :model do
  subject(:card) { build(:card) }

  it { is_expected.to be_valid }

  describe '#valid?' do
    subject(:valid?) { card.valid? }

    context 'without a question' do
      before do
        card.question = nil
      end

      it { is_expected.to be false }

      it 'holds the right error' do
        valid?
        expect(card.errors[:question]).to include("can't be blank")
      end
    end

    context 'without an answer' do
      before do
        card.answer = nil
      end

      it { is_expected.to be false }

      it 'holds the right error' do
        valid?
        expect(card.errors[:answer]).to include("can't be blank")
      end
    end
  end
end
