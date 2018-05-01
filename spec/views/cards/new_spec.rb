# frozen_string_literal: true

require 'rails_helper'

describe 'cards/new', type: :view do
  before do
    assign(:card, card)
    render
  end

  let(:card) { build(:card) }

  it 'renders new card form' do
    assert_select 'form[action=?][method=?]', cards_path, 'post' do
      assert_select 'input[name=?]', 'card[question]'
      assert_select 'input[name=?]', 'card[answer]'
      assert_select 'input[type=?]', 'submit'
    end
  end

  context 'with errors' do
    let(:card) { build(:invalid_card).tap(&:valid?) }

    it 'displays errors' do
      assert_select 'div[id=?]', 'error_explanation' do
        assert_select 'ul li', 2
      end
    end
  end
end
