clear;
clc;

% test case: 1
[row, column] = valid_location(1);
fprintf("Expected output: \n row: 1, column: 1\n");
fprintf("Actual output: \n row: %i, column: %i \n\n", row, column)

% test case: 2 ( As the for loop runs out so it should display 3, 3)
[row, column] = valid_location(0);
fprintf("Expected output: \n row: 3, column: 3\n");
fprintf("Actual output: \n row: %i, column: %i \n\n", row, column)

% test case: 3
[row, column] = valid_location(5);
fprintf("Expected output: \n row: 2, column: 2\n");
fprintf("Actual output: \n row: %i, column: %i \n\n", row, column)

