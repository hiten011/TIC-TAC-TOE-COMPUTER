clear;
clc;

% test case 1 (testing row):

% creating game matrix
game = ['X', 'X', 'X'; 'O', 'X', 'O'; 'X', 'X', '9'];

status = won(game, 8);

% expected output
fprintf("Expected Output: 2\n");

% Actual output
fprintf("Actual Output: %i\n\n", status);



% test case 2 (testing diagonals):

% creating game matrix
game = ['O', '2', '3'; '4', 'O', '6'; '7', '8', 'O'];

status = won(game, 3);

% expected output
fprintf("Expected Output: 1\n");

% Actual output
fprintf("Actual Output: %i\n\n", status);



% test case 2 (testing foe the tie case):

% creating game matrix
game = ['O', '2', '3'; '4', '5', '6'; '7', '8', 'O'];

status = won(game, 9);

% expected output
fprintf("Expected Output: 3\n");

% Actual output
fprintf("Actual Output: %i\n\n", status);

