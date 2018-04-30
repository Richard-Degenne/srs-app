# frozen_string_literal: true

FactoryBot.define do
  factory :card do
    question 'Is that a question?'
    answer 'That is an answer.'

    factory :invalid_card do
      question ''
      answer ''
    end
  end
end
