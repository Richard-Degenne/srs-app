# frozen_string_literal: true

class ReviewController < ApplicationController
  def queue
    @queue = Card.all
  end
end
