Rails.application.routes.draw do
  namespace :api do
    get 'endpoint/index', defaults: { format: :json }
  end

  root "api/endpoint#index"
end
