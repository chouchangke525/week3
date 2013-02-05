RpsApp::Application.routes.draw do
  
get '/rps', :controller=>'rps', :action=>'index',:as=>:rps
get '/rps/choose', :controller=>'rps', :action=>'choose', :as=>:choose


end
