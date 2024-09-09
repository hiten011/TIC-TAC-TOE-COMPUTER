clear;
clc;

% Tic Tac toe game

% prompting the user for the type of game they want to play
game_type_options = ["SINGLE", "MULTIPLAYER"];
game_type = input("Which type of game do you wanna play, single player or multiplayer game? ", "s");

% prompting the user till he gives an valid input
while ~(strcmpi(game_type, game_type_options(1))) && ~(strcmpi(game_type, game_type_options(2)))
    game_type = input("please, enter a valid input, single player or multiplayer game? ", "s");
end

difficulty_options = ["EASY", "MEDIUM", "NIGHTMARE"];
if strcmpi(game_type, game_type_options(1))
    number_of_players = 1;

    % ask for the difficulty of the level
    difficulty = input("Enter the difficulty of the game, Easy, Medium, Nightmare: ", "s");
    while ~(strcmpi(difficulty, difficulty_options(1))) &&  ~(strcmpi(difficulty, difficulty_options(2))) &&  ~(strcmpi(difficulty, difficulty_options(3)))
        difficulty = input("Enter the difficulty of the game, Easy, Medium, Nightmare: ", "s");
    end

else
    number_of_players = 2;
end

% prompting the users for their name and storing them in a matrix
% Defining variables and player matrix
player = string(zeros(number_of_players,2));
sign = ['O', 'X'];

for i = 1:number_of_players
    player(i, 1) = input("Enter the name of player " + i + ": ", "s");

    % assigning signs to each player
    player(i, 2) = sign(i);
end

% if it is single player game then set the other player as computer
if number_of_players == 1
    player(2, 1) = "COMPUTER";

    % assigning signs to computer
    player(2, 2) = sign(2);
end

fprintf("\n");

% printing out the name and signs assigned to players
for j = 1:2
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
moves = 0;

% till we find a winner or the game ties, keep on doing while loop
while ~is_winner
    % running the game for both players at a time
    for k = 1:2

        % counting number of moves
        moves = moves + 1;
        % printing the updates game matrix
        print_game(game);

        % taking a valid input from the user and converting it to cordinates
        % using if statement to check whether second input is from user or
        % the computer
        if k == 2 && number_of_players == 1 && strcmpi(difficulty, difficulty_options(1))
            [row, column] = easy_computer_input(game);

        elseif k == 2 && number_of_players == 1 && strcmpi(difficulty, difficulty_options(2))
             [row, column] = medium_computer_input(game);

        elseif k == 2 && number_of_players == 1 && strcmpi(difficulty, difficulty_options(3))
             [row, column] = medium_computer_input(game);

        else
            [row, column] = valid_input(game, player, k);
        end
        

       % recording the user input to the matrix
       game(row, column) = player(k, 2);

       % check whether someone has won
       end_result = won(game, player, number_of_players, moves);

       if end_result == 1 || end_result == 2 || end_result == 3
           is_winner = true;
           print_game(game);
           print_winner(end_result, player);
           break;
       end % end if

    end % end for
end % end while
