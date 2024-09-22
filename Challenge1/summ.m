% ***************************** Q_23 *****************************
function [s] = summ(k)
s= 0;
    for i = 1:66
       s = s + 10*2.5^k;   
       if (s > 2.5*1018)
           break;
       end
    end
    fprintf('the summation = %i at iteration = %i\n', s,i)
    fprintf('The deffrence between the computed sum of series and 2.5 ∗ 1018 = %i\n', s-2.5*1018)
end