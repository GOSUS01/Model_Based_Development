clc
clearvars
% **************************    Q_7  *****************************
% ************************** Required a **************************
%Method 1
disp(datetime)
%Method 2
format short e
T=clock;

if T(2) == 1 
  fprintf('It is: %d -day of the %d st month of the year: %d \n', T(3), T(2), T(1))
elseif T(2)==2
  fprintf('It is: %d -day of the %d -nd month of the year: %d \n', T(3), T(2), T(1))
elseif T(3)==3
  fprintf('It is: %d -day of the %d -rd month of the year: %d \n', T(3), T(2), T(1))
else
  fprintf('It is: %d -day of the %d -th month of the year: %d \n', T(3), T(2), T(1))
end
fprintf('current time is: %d o\''clock %d min and %0.3f secs \n', T(4), T(5), T(6))

% ************************** Required b **************************
A1 = 1:10;
A2 = linspace(1,10,10);
A3 = eye(2,10);

% ************************** Required c **************************
B1 = randi([-1,1],5, 6);
B2 = rand(5, 6);
B3 = randn(5, 10);

% ************************** Required d **************************
C1 = randi([-1,1],5, 6);
C2 = rand(5, 6);
C3 = randn(5, 10);

% ************************** Required e **************************
% Write in it the commands performing all possible (arithmetic array) operations 
% (+, -, *, /, .*, ./, ^, .^)with A1, A2, and A3 (at least three operations)and call these new 
% matrices: A1new1, A1new2, A1new3, A2new1, A2new2, A2new3, A3new1, A3new2, A3new3. 
% Hints: use transpose() and rot90() while performing arithmetic array operations
A1new1 = A1 + A1;
A1new2 = A1 .* A1;
A1new3 = A1 * transpose(A1);

A2new1 = A2 / A2;
A2new2 = A2 * rot90(A2);
A2new3 = A2.^2;

A3new1 = A3 * transpose(A3);
A3new2 = A3 .^ A3;
A3new3 = A3 - A3;

% ************************** Required f **************************
% Write in it the commands performing all possible (arithmetic array) operations 
% (+, -, *, /, .*, ./, ^, .^,sum, mean) with B1, B2 and B3 (at least three operations) and 
% call new matrices: B1new1,B1new2, B1new3, B2new1, B2new2, B2new3, B3new1, B3new2, B3new3. 
% Hint: use fliplr() and transpose() while performing arithmetic array operations

B1new1 = B1 + B1;
B1new2 = B1 .* B1;
B1new3 = B1 * transpose(B1);

B2new1 = B2 / B2;
B2new2 = B2 .* fliplr(B2);
B2new3 = B2.^2;

B3new1 = B3 * transpose(B3);
B3new2 = B3 .^ B3;
B3new3 = B3 - B3;

% ************************** Required g **************************
% Create AB1, AB2, and AB3 matrices from A1, A2, A3, and B1, B2, and B3. Also, use part of any
% A1, A2, A3 and B1, B2, B3 arrays. Note that every AB1, AB2, AB3, ABC4, ABC5 should contain
% some elements from arrays A and B. Hint: use flipud() and repmat() while creating the arrays
% AB1, AB2, and AB3

AB1 = A1 * repmat(B1,2,1);
AB2 = repmat(rot90(A2),1,5) * B2;
AB3 = repmat(rot90(A3),1,5) + repmat(B3,2,1);

% ************************** Required h **************************
% Create ABC1, ABC2, and ABC3 matrices by combining/concatenating the previously created
% arrays: A1, A2, A3 and B1, B2, B3 and C1, C2, C3. You should also use part of any A1, A2, A3
% and B1, B2, B3 and C1, C2, C3 arrays. Note that every ABC1, ABC2, ABC3 should contain some
% elements from the A, B and C matrices from Parts 1, 2, and 3.

ABC1 = vertcat(A1(1:6),B1(2,:),C1(2,:));
ABC2 = vertcat(A2(1:5),B2(2,1:5),C2(2,1:5));
ABC3 = horzcat(A2(1:5),B2(2,1:5),C2(2,1:5));
