Rails.application.routes.draw do
  resources :phrases
  root to: "phrases#home"
  get 'get_random_phrase' , to: 'phrases#get_random_phrase'
  get 'reset_phrases', to: 'phrases#clear_phrases'
end
