var002 = imread('trees_var002.tif');
var010 = imread('trees_var010.tif');
var025 = imread('trees_var025.tif');

salt004 = imread('trees_salt004.tif');
salt020 = imread('trees_salt020.tif');
salt050 = imread('trees_salt050.tif');

% v2f1 = medfilt2(var002);
% v2f2 = medfilt2(v2f1);
% figure, imshow(var002);
% figure, imshow(v2f2);

s2f1 = medfilt2(salt004);
s2f2 = medfilt2(s2f1);
figure, imshow(salt004);
figure, imshow(s2f2);