# frozen_string_literal: true

Rails.application.routes.draw do
  resources :countries
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :users, only: %i[index show]
  resources :countries, only: %i[:index, :show, :destroy, :create, :update]
end
