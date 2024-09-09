clear;
clc;

% creating game matrix
game = ['O', 'O', 'O'; 'X', '5', 'X'; 'O', 'O', '9'];


% test case 1:
col_number = 1;
value = column_check(col_number, game);

% expected output
fprintf("Expected Output: 13\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);


% test case 2:
col_number = 2;
value = column_check(col_number, game);

% expected output
fprintf("Expected Output: 16\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);


% test case 3:
col_number = 3;
value = column_check(col_number, game);

% expected output
fprintf("Expected Output: 20\n");

% Actual output
fprintf("Actual Output: %i\n\n", value);
