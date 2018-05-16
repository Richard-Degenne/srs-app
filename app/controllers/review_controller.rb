# frozen_string_literal: true

class ReviewController < ApplicationController
  def review
    @queue = Card.all
  end
end
