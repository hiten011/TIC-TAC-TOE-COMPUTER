% function to take valid input from the computer
function [row, column, n] = hard_computer_input(moves, game, recorded_moves)

    if moves == 2
        % record the previous move of player
        temp_first = recorded_moves(1); 

        % determing first move
        first = first_move(temp_first);
        n = first;
        [row, column] = valid_location(first);
        return
    end % end if

    % if their is a chance that computer wins take that
    [ifWin, row1, column1] = if_win(game);
    if ifWin
        row = row1;
        column = column1;
        n = 0;
        return;
    end
    
    % if player is going to win and we can block it block
    [ifBlock, row2, column2] = if_block(game);
    if ifBlock
        row = row2;
        column = column2;
        n = 0;
        return;
    end
    
    % determing second move
    if moves == 4
        second = second_move(recorded_moves, game);
        n = second;
        [row, column] = valid_location(second);
        return
    end % end if

    other_moves = easy_computer_input(game);
    n = other_moves;
    [row, column] = valid_location(other_moves);

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
            first = temp_first +  1;
        else
            first = temp_first + 3;
        end
        return

    end
end


function [second] = second_move(recorded_moves, game)

    % for first move 5
    if recorded_moves(1) == 5 && recorded_moves(2) == 7
        second = 9;
        return
    end
    
    % for first move between 1, 3, 7 & 9
    if recorded_moves(1) == 1 && recorded_moves(2) == 8
        second = 7;
        return;
    end

    if recorded_moves(1) == 3 && recorded_moves(2) == 8
        second = 9;
        return;
    end

    if recorded_moves(1) == 1 || recorded_moves(1) == 3 || recorded_moves(1) == 7 || recorded_moves(1) == 9
        second = 8;
        return
    end
    
    % for first move 2
    if recorded_moves(1) == 2 && recorded_moves(2) == 1 ||  recorded_moves(1) == 2 && recorded_moves(2) == 4
        second = 9;
        return;
    end

    if recorded_moves(1) == 2 && recorded_moves(2) == 7 ||  recorded_moves(1) == 2 && recorded_moves(2) == 9
        second = 5;
        return;
    end

    if recorded_moves(1) == 2 && recorded_moves(2) == 6
        second = 4;
        return;
    end

    % for first move 8
    if recorded_moves(1) == 8 && recorded_moves(2) == 7 ||  recorded_moves(1) == 2 && recorded_moves(2) == 4
        second = 3;
        return;
    end

    if recorded_moves(1) == 2 && recorded_moves(2) == 1 ||  recorded_moves(1) == 2 && recorded_moves(2) == 3
        second = 5;
        return;
    end

    if recorded_moves(1) == 2 && recorded_moves(2) == 6
        second = 4;
        return;
    end

    % for first move 4
    if recorded_moves(1) == 4 && recorded_moves(2) == 1 ||  recorded_moves(1) == 4 && recorded_moves(2) == 2
        second = 9;
        return;
    end

    if recorded_moves(1) == 4 && recorded_moves(2) == 3 ||  recorded_moves(1) == 4 && recorded_moves(2) == 6 ||  recorded_moves(1) == 4 && recorded_moves(2) == 9
        second = 5;
        return;
    end

    % for first move 6
    if recorded_moves(1) == 6 && recorded_moves(2) == 2 ||  recorded_moves(1) == 6 && recorded_moves(2) == 3
        second = 7;
        return;
    end


    if recorded_moves(1) == 6 && recorded_moves(2) == 1 ||  recorded_moves(1) == 6 && recorded_moves(2) == 4 ||  recorded_moves(1) == 6 && recorded_moves(2) == 7
        second = 5;
        return;
    end

    second = easy_computer_input(game);

end
