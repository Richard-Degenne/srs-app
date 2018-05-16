# frozen_string_literal: true

require 'rails_helper'

describe ReviewController, type: :routing do
  describe 'routing' do
    it 'routes to #review' do
      expect(get: '/review').to route_to('review#review')
    end
  end
end
