Rails.application.routes.draw do
  use_doorkeeper do
    controllers applications: 'oauth/applications'
  end
  devise_for :developers
  devise_for :users
end
