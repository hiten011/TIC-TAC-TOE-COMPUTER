clear;
clc;

% test case 1:

% creating game matrix
game = ['X', 'X', 'X'; 'O', 'X', 'O'; 'X', 'X', '9'];

occupied = is_occupied(1, game);

% expected output
fprintf("Expected Output: 1\n");

% Actual output
fprintf("Actual Output: %i\n\n", occupied);



% test case 2 (testing diagonals):

% creating game matrix
game = ['X', 'X', 'X'; 'O', 'X', 'O'; 'X', 'X', '9'];

occupied = is_occupied(9, game);

% expected output
fprintf("Expected Output: 0\n");

% Actual output
fprintf("Actual Output: %i\n\n", occupied);

