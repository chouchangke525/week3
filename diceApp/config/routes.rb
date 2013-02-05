DiceApp::Application.routes.draw do
 get '/dice', :controller=>'dice', :action=>'index', :as=>:dice
 get '/dice/compare', :controller=>'dice', :action=>'compare',:as=>:compare
 get '/dice/test', :controller=>'dice',:action=>"test",:as=>:test
end
