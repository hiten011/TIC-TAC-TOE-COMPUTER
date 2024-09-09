% function to take valid input from the computer
function [row, column] = hard_computer_input(moves, game, recorded_moves)

    if moves == 2
        temp_first = recorded_moves(1); 
        first = first_move(temp_first);
        [row, column] = valid_location(first);
        return
    end % end if
end




function first = first_move(temp_first)

    if temp_first == 5
        first = 3;
        return
    
    elseif temp_first == 1 || temp_first == 3 || temp_first == 7 || temp_first == 9
        first = 5;
        return
    
    else
        if temp_first == 2 || temp_first == 8
            first = temp_first -  1;
        else
            first = temp_first - 3;
        end
        return

    end
end