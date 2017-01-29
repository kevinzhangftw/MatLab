% read image
im = imread('dark.tif');
%input image in matrix form
i = im(:,:,1);

temp = min(i);         
a = min(temp);      
temp = max(i);         
b = max(temp)-65;     

slope = 255/(b - a);  
p0 = 20;

im2 = slope*(i-a) + p0; 

figure,imshow(im);
figure,imshow(im2);
figure,imhist(im);
figure,imhist(im2);