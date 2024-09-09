clear;
clc;

% creating game matrix
game = ['O', 'O', 'O'; 'X', '5', 'X'; 'O', 'O', '9'];


% test case 1:
diagonal_number = 1;
value = diagonal_check(diagonal_number, game);

% expected output
fprintf("Expected Output: 23\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);


% test case 2:
diagonal_number = 2;
value = diagonal_check(diagonal_number, game);

% expected output
fprintf("Expected Output: 16\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);
