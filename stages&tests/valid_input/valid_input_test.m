clear;
clc;

% creating player array
player = string(zeros(2,2));
player(1, 1) = "Hiten";
player(2, 1) = "Joe";
player(1, 2) = "O";
player(2, 2) = "X";

% creating game array
game = ['X', 'X', 'X'; 'O', 'X', 'O'; 'X', 'X', '9'];

% which player is inputing
k = 2; % player 2

[row, column, n] = valid_input(game, player, k);

disp(row);
disp(column);

% test case: 

% input = 1 
% Expected output: Enter again (As it is already occupied)
% Actual output = Enter again

% input = 0
% Expected output: Enter again
% Actual output = Enter again

% input = 0.01
% Expected output: Enter again
% Actual output = Enter again 

% input = 9
% Expected output: row: 3, column: 3, n: 9
% Actual output = row: 3, column: 3, n: 9
