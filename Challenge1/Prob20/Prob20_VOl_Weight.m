clc
clearvars
% **************************Q_20**************************
g = 9.81;
type = input('Write a character represents YOUR model FROM those (cube[c], cylinder[y],rectangular prism[r]): ', 's');
density = input('DENSITY(AL - S - CO): ','s');
if density == "AL"
    rho = 2710;      %Kg/m3
elseif density == "S"
    rho = 7700;      %Kg/m3
else
    rho = 8850;      %Kg/m3
end

if type == 'c'
    L_cube = input('The Length of the CUBE (meter): ');
    vol_cube = L_cube^3;
    Weight_cube = rho * vol_cube * g;
    fprintf('The Volume of The CUBE is %f m^3\n',vol_cube)
    fprintf('The Weight of The CUBE is %f N\n',Weight_cube)
elseif type == 'y'
    R = input('The Radius of the cylinder (meter): ');
    H_cy = input('The Height of the cylinder (meter): ');
    vol_cy = pi * (R^2) * H_cy; 
    Weight_cy = rho * vol_cy * g;
    fprintf('The Volume of The Cylinder is %f m^3\n',vol_cy)
    fprintf('The Weight of The Cylinder is %f N\n',Weight_cy)
elseif type == 'r'
    L_rec = input('The Length of the rectangular prism (meter): ');
    W_rec = input('The Width of the rectangular prism (meter): ');
    H_rec = input('The Height of the rectangular prism (meter): ');
    vol_rec = L_rec * W_rec * H_rec;
    Weight_rec = rho * vol_rec * g;    
    fprintf('The Volume of The rectangular prism is %f m^3\n',vol_rec)
    fprintf('The Weight of The rectangular prism is %f N\n',Weight_rec)
end

% import the Input data from User to External File
fileID = fopen('RESULTS.txt','w');
fprintf(fileID, 'Write a character represents YOUR model FROM those (cube[c], cylinder[y],rectangular prism[r]): %c\n',type);
fprintf(fileID, 'DENSITY(AL - S - CO): %s\n', density);
switch type
    case 'c'
        fprintf(fileID, 'The Volume of The CUBE is %f m^3\n',vol_cube);
        fprintf(fileID, 'The Weight of The CUBE is %f N\n',Weight_cube);
    case 'y'
        fprintf(fileID, 'The Volume of The Cylinder is %f m^3\n',vol_cy);
        fprintf(fileID, 'The Weight of The Cylinder is %f N\n',Weight_cy);
    case 'r'
        fprintf(fileID, 'The Volume of The rectangular prism is %f m^3\n',vol_rec);
        fprintf(fileID, 'The Weight of The rectangular prism is %f N\n',Weight_rec);
end
fclose(fileID);


