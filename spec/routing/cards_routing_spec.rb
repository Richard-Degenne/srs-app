# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CardsController, type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/cards').to route_to('cards#create')
    end
  end
end
