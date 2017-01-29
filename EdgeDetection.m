noisyimg = imread('trees_var025.tif');
% 
% figure, imshow(noisyimg);
% 
% smoothedimg = medfilt2(noisyimg, [5 5]);

smoothedimg = imgaussfilt(noisyimg, 4);
% figure, imshow(smoothedimg);
% 
%  edgeNImgSobel = edge(noisyimg,'Sobel');
%  figure, imshow(edgeNImgSobel);

% edgeSImgSobel = edge(smoothedimg,'Sobel');
% figure, imshow(edgeSImgSobel);

% 
% edgeNImgPrewitt = edge(noisyimg,'Prewitt');
% figure, imshow(edgeNImgPrewitt);


% edgeSImgPrewitt = edge(smoothedimg,'Prewitt');
% figure, imshow(edgeSImgPrewitt);

% edgeNImgCanny = edge(noisyimg,'Canny');
% figure, imshow(edgeNImgCanny);

edgeSImgCanny = edge(smoothedimg,'Canny');
figure, imshow(edgeSImgCanny);
