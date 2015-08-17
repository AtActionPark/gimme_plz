Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users

  root 'static_pages#home' 

  get 'help' => 'static_pages#help'
  get 'who' => 'static_pages#who'
  get 'team' => 'static_pages#team'
  get 'conditions' => 'static_pages#conditions'
  get 'faq' => 'static_pages#faq'
  get 'assistance' => 'static_pages#assistance'
  get 'contact' => 'static_pages#contact'
 
end
