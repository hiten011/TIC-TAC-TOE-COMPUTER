function [location] = valid_input()

    is_valid_int = false;

    % while to make sure users
    while ~is_valid_int

        % taking input from the user
        n = input("Enter the location: ");

        % checking whether integer is valid int
        if 1 <= n && n <= 9 && mod(n, 1) == 0
            is_valid_int = true;
        end % end if
    end

    % Storing the correct input to the output
    location = n;


