var002 = imread('trees_var002.tif');
var010 = imread('trees_var010.tif');
var025 = imread('trees_var025.tif');

salt004 = imread('trees_salt004.tif');
salt020 = imread('trees_salt020.tif');
salt050 = imread('trees_salt050.tif');

% figure, imshow(var010);
% figure, imshow(var025);

% v2f1 = imgaussfilt(var002, 1.33);
% figure, imshow(v2f1);
% v2f2 = imgaussfilt(v2f1, 1);
% figure, imshow(var002);
% figure, imshow(v2f2);
 
% v10f1 = imgaussfilt(var010, 1);
% v10f2 = imgaussfilt(v10f1, 2);
% figure, imshow(var010);
% figure, imshow(v10f2);
% 
% v25f1 = imgaussfilt(var025, 1);
% v25f2 = imgaussfilt(v25f1, 2);
% figure, imshow(var025);
% figure, imshow(v25f2);
% 
 s4f3 = imgaussfilt(salt050, 1);
% s4f2 = imgaussfilt(s4f1, 2);
figure, imshow(s4f3);
% figure, imshow(s4f2);