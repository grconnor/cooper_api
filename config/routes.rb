Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip: [:omniauth_callbacks]
namespace :api do
    resources :pings, only: [:index], constraints: { format: 'json '}
    namespace :v1 do
    resources :performance_data, only: [:create]
   end
 end
end
