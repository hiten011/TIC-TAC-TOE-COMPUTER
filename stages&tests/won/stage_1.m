% function to check if someone has won
function [status] = stage_1(game, player, moves)
    for i = 1: 3

        % checking if their is a same row or column with same sign

        % for row
        if strcmp(game(i, 1), game(i, 2)) && strcmp(game(i, 2), game(i, 3))
            % checking which player has won
            for j = 1: 2
                if strcmp(game(i, 1), player(j, 2)) % matching the sign
                    status = j;
                    break;
                end % end for
            end % end if
            
            moves = moves + 10; % so that the moves if statement does run at the end of function
            
            break;
        end % end if
        
        % for column
        if strcmp(game(1, i), game(2, i)) && strcmp(game(2, i), game(3, i))
            % checking which player has won
            for j = 1: 2
                if strcmp(game(1, i), player(j, 2)) % matching the sign
                    status = j;
                    break;
                end % end for
            end % end if
            
            moves = moves + 10; % so that the moves if statement does run at the end of function
            break;
        end % end if

        % if no one has won and game is continuing
        status = 0;

    end % end for

    % checking the dioganals, for the win
        if strcmp(game(1, 1), game(2, 2)) && strcmp(game(2, 2), game(3, 3))
            % checking which player has won
            for j = 1: 2
                if strcmp(game(1, 1), player(j, 2)) % matching the sign
                    status = j;
                    break;
                end % end if
            end % end for
            moves = moves + 10; % so that the moves if statement does run at the end of function
        end % end if

        if strcmp(game(1, 3), game(2, 2)) && strcmp(game(2, 2), game(3, 1))
            % checking which player has won
            for j = 1: 2
                if strcmp(game(1, 3), player(j, 2)) % matching the sign
                    status = j;
                    break;
                end % end if
            end % end for
            moves = moves + 10; % so that the moves if statement does run at the end of function
        end % end if
        
        % if no-one has won and game has reached its end
        if moves == 9
            status = 3;
        end

end % end function
