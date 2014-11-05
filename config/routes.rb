Hkk::Application.routes.draw do

  root :to => 'home#index'

  controller :home do
    get '/home', :action => 'index', :as => 'home'
    get '/about', :action => 'about', :as => 'about'
    get '/resume', :action => 'resume', :as => 'resume'
    get '/skills', :action => 'skills', :as => 'skills'
    get '/contact', :action => 'contact', :as => 'contact'
  end

end
