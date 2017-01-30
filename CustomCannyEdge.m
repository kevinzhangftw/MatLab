noisyimg = imread('trees_var025.tif');
smoothedimg = imgaussfilt(noisyimg, 4);
% smoothedimg = wiener2(noisyimg,[15 15]);
% edgeSImgSobel = edge(smoothedimg,'Sobel', ([]),'both','nothinning');
% figure, imshow(edgeSImgSobel);

x = edge(smoothedimg,'Sobel', ([]),'horizontal','nothinning');
y = edge(smoothedimg,'Sobel', ([]),'vertical','nothinning');

% figure, imshow(x);
% figure, imshow(y);

norm =sqrt(x.*x+y.*y);
% figure, imshow(norm);

% alfa=0;

norm_max=max(max(norm));
norm_min=min(min(norm));
level=norm_min;
% level=alfa*(norm_max-norm_min)+norm_min;
thres=max(norm,level.*ones(size(norm)));
figure, imshow(thres);

thinEdgeImage = bwmorph(thres, 'Skel', inf);
figure, imshow(thinEdgeImage);


