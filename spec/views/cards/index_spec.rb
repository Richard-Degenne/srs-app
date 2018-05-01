# frozen_string_literal: true

require 'rails_helper'

describe 'cards/index', type: :view do
  before do
    assign(:cards, (0...2).map { create(:card) })
  end

  it 'renders a list of cards' do
    render
    assert_select '.cards-index' do
      assert_select '.card', count: 2
    end
  end
end
