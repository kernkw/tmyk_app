TmykApp::Application.routes.draw do
  post "facts" => 'facts#create'
  post 'emails' =>'emails#create'
end
