clc
clearvars
%% **************************Q_10**************************
n = 0;
sum_w = 0;   %Summation of while
sum_f = 0;   %Summation of for
exact_value1 = pi^2 / 8;
iteration = 0:101;
while(n<=101)
    sum_w = sum_w + 1/(2*n+1)^2;
    error_w(n+1) = abs(exact_value1 - sum_w);
    n = n+1;
end

figure(1)

plot(iteration, error_w)
hold on

for i = 0:101
    sum_f = sum_f + 1/(2*i+1)^2;
    error_f(i+1) = abs(exact_value1 - sum_f);
end

plot(iteration, error_f,'--g')
hold off
title('Error values over iterations')
xlabel('Iteration')
ylabel('Error')
legend('While','For')
%% **************************Q_11**************************
k = 1;  % iteration
sum = 0;

while(k<=200)
    sum = sum + k*(k+1);
    sum_Elememts(k) = sum;
    k = k+1;
end
figure(2)
plot(1:k-1, sum_Elememts)

title('Summation As a Function of K')
xlabel('K')
ylabel('summation')
%% **************************Q_12**************************
exact_value2 = (pi^2)/6;
SM = 0;
for N = 1:99
    SM = SM + 1/N^2;
    error(N) = abs(exact_value2 - SM);
    if (error(N) < 10e-13)
        break;
    end
end
figure(3)
plot(1:numel(error), error)
title('Error values over iterations')
xlabel('Iteration')
ylabel('Error')





