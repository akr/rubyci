Rubyci::Application.routes.draw do
  root :to => 'reports#current'

  resources :reports do
    collection do
      get "current"
      post "receive_recent"
    end
  end

  resources :servers do
    member do
      post 'moveup'
      post 'movedown'
    end
  end
end
