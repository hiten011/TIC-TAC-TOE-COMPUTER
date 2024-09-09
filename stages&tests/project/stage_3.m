clear;
clc;

% Tic Tac toe game

% prompting the users for their name and storing them in a matrix
% Defining variables and player matrix
number_of_players = 2;
player = string(zeros(number_of_players,2));
sign = ['O', 'X'];

for i = 1:number_of_players
    player(i, 1) = input("Enter the name of player " + i + ": ", "s");

    % assigning signs to each player
    player(i, 2) = sign(i);
end

fprintf("\n");

% printing out the name and signs assigned to players
for j = 1:number_of_players
    fprintf("%s is assigned %s\n", player(j, 1), player(j, 2));
end

fprintf("\n");

% creating matrix to play game
game = zeros(3, 3);
number = 1;
for r = 1:3
    for c = 1:3
        game(r, c) = number;
        number = number + 1;
    end
end

game = string(game);

% explaining rules to the user
fprintf("To add the sign in the matrix, \nsimply enter the corresponding number to the location you want to add the sign to.\n");
print_game(game); % user_defined function to display matrix in a neat form
fprintf("For instance, player 1 wants to enter the O in the middle, then he will enter 5\n");

% main loop of the game
is_winner = false; 

% till we find a winner or the game ties, keep on doing while loop
while ~is_winner
    % running the game for both players at a time
    for k = 1:number_of_players

        % printing the updates game matrix
        print_game(game);

        % taking a valid input from the user and converting it to cordinates
        [row, column] = valid_input(game);
        

       % recording the user input to the matrix
       game(row, column) = player(k, 2);
       print_game(game);

       % check whether someone has won
       end_result = won(player);

       if end_result == player(1) || end_result == player(2) || end_result == "tie" % use strcmp function()
           is_winner = true;
           break;
       end % end if

    end % end for
end % end while
