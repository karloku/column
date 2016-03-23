# frozen_string_literal: true
Rails.application.routes.draw do
  resources :datasets, only: [:index, :show, :create]
  resources :csv_files, only: [:show, :create]
  resources :data_joins, only: [:create]

  # mount ActionCable.server => '/cable'
end
