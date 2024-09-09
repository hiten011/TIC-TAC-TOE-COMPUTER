clear;
clc;

% test case 1:

% creating game matrix
game = ['X', 'X', 'X'; 'O', 'X', 'O'; 'X', 'X', '9'];

[ifWin, row, column] = if_win(game);

% expected output
fprintf("Expected Output: 1, 3, 3\n");

% Actual output
fprintf("Actual Output: %i, %i, %i\n\n", ifWin, row, column); % As the 2 column two O which can be wined by X



% test case 2 (testing diagonals):

% creating game matrix
game = ['X', 'X', 'X'; 'O', '5', 'O'; 'O', 'O', 'X'];

[ifWin, row, column] = if_win(game);

% expected output
fprintf("Expected Output: 1, 2, 2\n");

% Actual output
fprintf("Actual Output: %i, %i, %i\n\n", ifWin, row, column);

