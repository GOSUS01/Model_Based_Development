% **************************Q_8**************************
% Write an M-file using the [while, end] loop control statement to compute the values of the cosine
% function g(θ) = cos (θ) for θ = 0...π with 2,000 incremental steps in this range and stop 
% computation when the value of the function g(θ) ≈ 0.99999. Also, display how many steps 
% it takes to get through the computation process and plot your simulation results. Also, 
% display the end value of 0.99999 in the same plot.


num_steps = 2000;
theta = linspace(0, pi, num_steps);
i = 1;
g = cos(theta(i));
while(g > 0.9999)
    g_theta(i) = g;
    i = i+1;
    g = cos(theta(i));

end

plot(theta(1:i-1), g_theta,'bo--')
hold on
plot(theta(i), g,'ro')
hold off
title('Computation of g(\theta) = cos(\theta)');
xlabel('\theta');
ylabel('g(\theta)');

display(['The Number of Steps : ',num2str(i)])

