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

