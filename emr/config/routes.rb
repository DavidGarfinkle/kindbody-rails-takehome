Rails.application.routes.draw do
  get 'welcome/index'

  resources :patients do
    resources :patient_notes
  end

  root 'welcome#index'
end
