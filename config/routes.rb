Rails.application.routes.draw do

	get '/prof' => redirect('/prof/students')

  scope :prof do
	  resources :grade_sets
	  resources :students
  end

  get '/report' => 'reports#show'

  root 'reports#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
