Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "hello", to: lambda { |env| [200, { 'Content-Type' => 'application/json' }, [{ msg: 'Hello World', count: 123 }.to_json ]] }
  get 'hai', to: ->(env) { [200, { 'Content-Type' => 'text/html' }, [ActionController::Base.render(template: 'hai')]] }
  # Defines the root path route ("/")
  # root "posts#index"
end
