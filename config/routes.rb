# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :group, only: [:create]
  get '/health_check', to: 'health_check#show'
end
