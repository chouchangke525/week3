class DiceController < ApplicationController
def index

end


def compare
@first_dice=rand(1..6)
@second_dice=rand(1..6)
@total=@first_dice+@second_dice

    if @total==7||@total==11
    @sentence='YOU WIN!'
    @button='Start Over!'
    @path=dice_path
    @@point=nil
    elsif @total==2||@total==3||@total==12
    @sentence='YOU LOSE!'
    @button='Start Over!'
    @path=dice_path
    @@point=nil
    else
    @@point=@total
    @sentence='Your point is now '+@@point.to_s+'. Now try to get '+@@point.to_s+' again before you roll a 7.'
    @button='Roll the dice!'
    @path=test_path
    end 
end


def test

@first_dice=rand(1..6)
@second_dice=rand(1..6)
@total=@first_dice+@second_dice

    if @total==7
    @sentence='YOU LOSE!'
    @button='Start Over!'
    @path=dice_path
    @@point=nil
    elsif @total==@@point
    @sentence='YOU WIN!'
    @button='Start Over!'
    @path=dice_path
    @@point=nil
    else
    @sentence='Your point is now '+@@point.to_s+'. You can roll again.'
    @button='Roll the dice!'
    @path=test_path
    end


end



end
