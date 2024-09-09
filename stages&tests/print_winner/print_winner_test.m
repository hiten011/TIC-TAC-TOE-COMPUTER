clear;
clc;

% creating player array
player = string(zeros(2,2));
player(1, 1) = "Hiten";
player(2, 1) = "Joe";

% test case 1: if player one has won

% calling function to print winner
print_winner(1, player);


% test case 2: if player two has won

% calling function to print winner
print_winner(2, player);


% test case 1: if game has ended in a draw

% calling function to print winner
print_winner(3, player);