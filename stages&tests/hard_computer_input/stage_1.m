% function to take valid input from the computer
function [row, column] = hard_computer_input(moves, game)

    if moves == 2
        first = first_move(game);
        [row, column] = valid_location(first);
        return
    end % end if

end

function first = first_move(game)
    if is_occupied(5, game)
        %%
        temp_list = [1, 3, 6, 9];
        first = temp_list(randi(4));
        disp(first);
        %%
        return
    end
end
