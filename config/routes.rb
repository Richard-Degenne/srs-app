# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'review', to: 'review#review', as: :review
end
