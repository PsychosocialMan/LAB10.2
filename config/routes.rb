Rails.application.routes.draw do
  root 'palindrome#input'
  get '/output' => 'palindrome#proxy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
