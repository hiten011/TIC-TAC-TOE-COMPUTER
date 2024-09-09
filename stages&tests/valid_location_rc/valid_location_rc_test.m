clear;
clc;

% test case: 1
temp = valid_location_rc(1, 1);
fprintf("Expected output: \n location: 1\n");
fprintf("Actual output: \n location: %i \n\n", temp);


% test case: 2
temp = valid_location_rc(0, 0);
fprintf("Expected output: \n location:9\n");
fprintf("Actual output: \n location: %i \n\n", temp);


% test case: 3
temp = valid_location_rc(2, 2);
fprintf("Expected output: \n location: 5\n");
fprintf("Actual output: \n location: %i \n\n", temp);