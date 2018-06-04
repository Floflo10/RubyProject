# @Author: Ismael Hadj
# @Date:   2018-05-21T10:46:10+02:00
# @Email:  Ismael.hadj13@yahoo.com
# @Last modified by:   Ismael Hadj
# @Last modified time: 2018-05-21T12:53:19+02:00



Rails.application.routes.draw do
  get 'insert_fav/create'
  post 'insert_fav' => 'favorites#create'

  get 'insert_recit/insert'
  post 'insert_recit' => 'travels#create'

  get 'insert_recit/index'

  resources :favorites
  devise_for :users
  resources :pictures
  resources :travels, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "travels#index"

end
