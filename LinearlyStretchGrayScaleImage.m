% read image
im = imread('dark.tif');
%input image in matrix form
i = im(:,:,1);

temp = min(i);         
a = min(temp)+20;      
temp = max(i);         
b = max(temp)-45;     

slope = 255/(b - a);  
p0 = 0;

im2 = slope*(i-a) + p0; 

figure,imshow(im);
figure,imshow(im2);
figure,imhist(im);
figure,imhist(im2);