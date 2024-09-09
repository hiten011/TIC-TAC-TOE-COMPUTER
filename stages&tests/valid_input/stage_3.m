% function to take valid input from the user
function [row, column] = valid_input(game, player, k)
    
    % variable to store valid input
    is_valid_int = false;
    is_occupied = true;

    % while to make sure users
    while ~is_valid_int || is_occupied

        % taking input from the user
        n = input(player(k, 1)  + " enter the location for " + player(k, 2) + ": ");

        % checking whether integer is valid int
        if 1 <= n && n <= 9 && mod(n, 1) == 0
            is_valid_int = true;
        end % end if

        % checking whether the location is already used
        [row, column] = valid_location(n); % converting the input into valid cordinates
        if ~strcmp(game(row, column), 'O') && ~strcmp(game(row, column), 'X')
            is_occupied = false;
        end % end if

    end % end while

end % end function