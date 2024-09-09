clear;
clc;

% test files for hard_computer_input

% creating game matrix
game = ['O', 'O', 'O'; 'X', '5', 'X'; 'O', 'O', '9'];


% test case 1:
row_number = 1;
value = row_check(row_number, game);

% expected output
fprintf("Expected Output: 9\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);


% test case 2:
row_number = 2;
value = row_check(row_number, game);

% expected output
fprintf("Expected Output: 24\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);


% test case 3:
row_number = 3;
value = row_check(row_number, game);

% expected output
fprintf("Expected Output: 16\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);
