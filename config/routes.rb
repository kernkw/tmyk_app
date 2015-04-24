TmykApp::Application.routes.draw do
  get "facts/create"
  post 'emails' =>'emails#create'
end
