%% **************************Q_1**************************
% 1st Method (Nested loop) 
for i=1:13    
    for j=1:13
        A2_M1(i,j)=j;
    end
end

% 2nd Method
A2_M2 =ones(13, 13).*(1:13);

% 3rd Method
A2_M3 = repmat(1:13,13,1);
%% **************************Q_2**************************
A5 =[1 2 3; 4 5 6; 7 8 9];
% required a
B = A5 - 5;
B5 = B.^2;
% required b
C = -A5+B5+1;
C_ = C < 1 ;
C5 = C_ + 13;

%% **************************Q_3**************************
A = repmat(1:7,7,1);
A_a = vertcat(repmat([1 2 3 0 4 5 6],3,1), zeros(1,7), repmat([1 2 3 0 4 5 6],3,1));

%% **************************Q_4**************************
A = -5:5;
C = A<0;

%% **************************Q_5**************************
E = [3 5 7; 1 1 4];
D = E .* (E>1) .* (E<7);

%% **************************Q_6**************************
x=linspace(-13, 0);
F = @(x) 2.*x.^2+2.*x-1;
F_x = F(x);  % method 1

F = 2.*x.^2+2.*x-1;  % method 2



