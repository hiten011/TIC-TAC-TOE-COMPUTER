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

% printing out the name and signs assigned to players
for j = 1:number_of_players
    fprintf("%s is assigned %s\n", player(j, 1), player(j, 2));
end


% creating matrix to play game
game = zeros(3, 3);
number = 1;
for r = 1:3
    for c = 1:3
        game(r, c) = number;
        number = number + 1;
    end
end

% explaining rules to the user
fprintf("To add the sign in the matrix, \nsimply enter the corresponding number to the location you want to add the sign to.\n\n");
disp(game);
fprintf("For instance, player 1 wants to enter the O in the middle, then he will enter 5\n");

% main loop of the game
is_winner = 'False'; 
% till we find a winner or the game ties, keep on doing while loop
while ~is_winner
    % running the game for both players at a time
    for k = 1:number_of_players

        % taking a valid input from the user
        location = valid_input(k); % function that take the argument k, to check which player is giving the input

        % converting the users input into valid location
        [rows, column] = valid_location(location);

       % recording the user input to the matrix
       game(row, column) = player(k, 2);

       % check whether someone has won
       end_result = won(player);

       if end_result == player(1) || end_result == player(2) || end_result == "tie"
           is_winner = 'True';
       end

    end
end