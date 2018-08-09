Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: :destroy
end

=begin
line 3: this is just the default. so when users go to localhst 3000, they will be redirected to the index

line 8: again, check routes. destroying does not have to be done in nested cocktail so this does not have to be inside cocktails
=end
