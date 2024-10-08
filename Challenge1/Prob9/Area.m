% **************************Q_9**************************
% Compute the area of a circle, square, and rectangle
W = input('Width of a rectangle in meter: ');
L = input('Length of a rectangle in meter: ');
S = input('Side Length of a Square in meter: ');
R = input('Radius of a circle: ');

if (isempty(L) && isempty(W) && isempty(S) && isempty(R))
    fprintf('You need to ENTER all dimensions!\n');
elseif (isempty(R) && isempty(S) && exist('L','var') && exist('W','var'))
    A1 = W*L;
    fprintf('The Area of a rectangle is %d m^2\n', A1);
elseif (isempty(L) && isempty(W) && exist('S','var') && isempty(R))
    A2 = S^2;
    fprintf('The Area of a Square is %d m^2\n', A2);
elseif (isempty(L) && isempty(W) && exist('R','var') && isempty(S))
    A3 = pi*R^2;
    fprintf('The Area of a circle is %d m^2\n', A3);
else
        A1 = W*L;
        A2 = S^2;
        A3 = pi*R^2;
        fprintf('The Area of a rectangle is %d m^2\n', A1);
        fprintf('The Area of a Square is %d m^2\n', A2);
        fprintf('The Area of a circle is %d m^2\n', A3);     
end
