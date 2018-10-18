Rails.application.routes.draw do
  namespace :api do
    get 'endpoint/index', defaults: { format: :json }
  end
  get '/:anagrams', to: 'api/endpoint#index', as: 'anagram'

end
