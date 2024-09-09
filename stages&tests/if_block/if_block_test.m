clear;
clc;

% test case 1:

% creating game matrix
game = ['O', 'O', 'O'; 'X', 'O', 'X'; 'O', 'O', '9'];

[ifBlock, row, column] = if_block(game);

% expected output
fprintf("Expected Output: 1, 3, 3\n");

% Actual output
fprintf("Actual Output: %i, %i, %i\n\n", ifBlock, row, column); % As the 2 column two O which can be blocked by X



% test case 2 (testing diagonals):

% creating game matrix
game = ['O', 'O', 'O'; 'X', '5', 'X'; 'X', 'X', 'O'];

[ifBlock, row, column] = if_block(game);

% expected output
fprintf("Expected Output: 1, 2, 2\n");

% Actual output
fprintf("Actual Output: %i, %i, %i\n\n", ifBlock, row, column);

