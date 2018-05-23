# frozen_string_literal: true

require 'rails_helper'

describe ReviewController, type: :routing do
  describe 'routing' do
    it 'routes to #review' do
      expect(get: '/review').to route_to('review#index')
    end

    it 'routes to #queue' do
      expect(get: '/queue').to route_to('review#queue', format: :json)
    end
  end
end
