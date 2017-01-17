% read image
im = imread('dark.tif');
m=255;
n=numel(im);
v=reshape(im,[],1);
v=double(v);
I=hist(v,0:m);

Output=I/n;

csum=cumsum(Output);

im2=csum(im+1);

figure, imshow(im2);