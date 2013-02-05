class PokerController < ApplicationController
  def index
  @number_1=rand(1..52)
  
  @number_2=rand(1..52)
  
  while @number_1==@number_2
   @number_2=rand(1..52)
  end
  
 @number_3=rand(1..52)
   
   while (@number_1==@number_3 ) || ( @number_1==@number_3)
    @number_3=rand(1..52)
   end
 
 @number_4=rand(1..52)
  while (@number_1==@number_4 ) || ( @number_2==@number_4)||( @number_3==@number_4)
    @number_4=rand(1..52)
  end
  

@number_5=rand(1..52)
  while (@number_1==@number_5 ) || ( @number_2==@number_5)||(@number_3==@number_5)||(@number_4==@number_5)
    @number_5=rand(1..52)
  end
  
if @number_1%4==0
@suit_1='heart'
elsif @number_1%4==1
@suit_1='diamond'
elsif @number_1%4==2
@suit_1='spade'
else @number_1%4==3
@suit_1='club'
end

if @number_2%4==0
@suit_2='heart'
elsif @number_2%4==1
@suit_2='diamond'
elsif @number_2%4==2
@suit_2='spade'
else @number_2%4==3
@suit_2='club'
end
  
if @number_3%4==0
@suit_3='heart'
elsif @number_3%4==1
@suit_3='diamond'
elsif @number_3%4==2
@suit_3='spade'
else @number_3%4==3
@suit_3='club'
end

if @number_4%4==0
@suit_4='heart'
elsif @number_4%4==1
@suit_4='diamond'
elsif @number_4%4==2
@suit_4='spade'
else @number_4%4==3
@suit_4='club'
end

if @number_5%4==0
@suit_5='heart'
elsif @number_5%4==1
@suit_5='diamond'
elsif @number_5%4==2
@suit_5='spade'
else @number_5%4==3
@suit_5='club'
end
  
  
  
  end
end
