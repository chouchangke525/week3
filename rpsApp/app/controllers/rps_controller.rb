class RpsController < ApplicationController
 def index
     
 end 
 
 def choose
 @computer = rand(1..3)
 @player=params[:format].to_i
 if @computer==@player
 @sentence= "IT'S A TIE"
 elsif (@computer==1&&@player==2)||(@computer==2&&@player==3)||(@computer==3&&@player==1)
 @sentence= "YOU LOSE!"
 else
 @sentence= "YOU WIN"
 end
 
 if @computer==1
 @computer_word="Rock"
 elsif @computer==2
 @computer_word="Scissors"
 else
 @computer_word="Paper"
 end
 
 if @player==1
 @player_word="Rock"
 elsif @player==2
 @player_word="Scissors"
 else
 @player_word="Paper"
 end
 
 
 end

end