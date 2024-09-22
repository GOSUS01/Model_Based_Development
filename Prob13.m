% **************************Q_13**************************
SUM = 0;
L = 10;
bn = -5:5;
x = 0:L/100:L;
for l = 1:length(x)
    for i = 1:11
        SUM = SUM + (bn(i)*sin(pi*x(l)*(2*i-1)))/(2*L);
        SuM(l,i) = SUM; 
    end
end
% figure(4)
% plot(1:11, SuM)
% title('Summation')
% xlabel('n')
% ylabel('summation')

% plot(x, SuM);
% xlabel('x');
% ylabel('f(x)');
% title('Fourier Series Approximation');


% Define the parameters
n = 11;
L = 10;
bn = -5:5;
x = 0:L/100:L;

% Calculate the series for each value of x
f = zeros(size(x));
for i = 1:length(x)
    for m = 1:n
        f(i) = f(i) + bn(m)*sin((2*m-1)*pi*x(i))/(2*L);
    end
end

% Plot the results
figure(5)
plot(x, f);
xlabel('x');
ylabel('f(x)');
title('Fourier Series Approximation');
grid on;
