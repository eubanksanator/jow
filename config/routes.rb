Rails.application.routes.draw do
  get 'day_of_weeks/index'

  get 'day_of_weeks/show'

  get 'day_of_weeks/new'

  get 'day_of_weeks/edit'

  get 'day_of_weeks/create'

  get 'day_of_weeks/update'

  get 'day_of_weeks/destroy'

  get 'weeks/index'

  get 'weeks/show'

  get 'weeks/new'

  get 'weeks/edit'

  get 'weeks/create'

  get 'weeks/update'

  get 'weeks/destroy'

  resources :users
  root 'users#index'
end
