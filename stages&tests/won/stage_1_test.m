clear;
clc;

% creating player matrix
player = string(zeros(2,2));
player(1, 1) = "Hiten";
player(2, 1) = "Joe";
player(1, 2) = "O";
player(2, 2) = "X";

% test case 1 (testing row):

% creating game matrix
game = ['X', 'X', 'X'; 'O', 'X', 'O'; 'X', 'X', '9'];

status = stage_1(game,player, 8);

% expected output
fprintf("Expected Output: 2\n");

% Actual output
fprintf("Actual Output: %i\n\n", status);



% test case 2 (testing diagonals):

% creating game matrix
game = ['O', '2', '3'; '4', 'O', '6'; '7', '8', 'O'];

status = stage_1(game, player, 3);

% expected output
fprintf("Expected Output: 1\n");

% Actual output
fprintf("Actual Output: %i\n\n", status);



% test case 2 (testing foe the tie case):

% creating game matrix
game = ['O', '2', '3'; '4', '5', '6'; '7', '8', 'O'];

status = stage_1(game, player, 9);

% expected output
fprintf("Expected Output: 3\n");

% Actual output
fprintf("Actual Output: %i\n\n", status);

