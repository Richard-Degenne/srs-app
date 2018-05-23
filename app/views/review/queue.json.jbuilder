# frozen_string_literal: true

json.array! @queue, partial: 'review/card', as: :card
