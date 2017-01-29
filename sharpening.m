peppers = imread('peppers.png');
fglass = imread('flower-glass.tif');

% figure, imshow(peppers);
figure, imshow(fglass);

% sfglassL = imsharpen(fglass);
% figure, imshow(sfglassL);

% speppersL = imsharpen(peppers);
% figure, imshow(speppersL);

H = fspecial('unsharp');
% speppersRGB = imfilter(peppers, H, 'replicate');
% figure, imshow(speppersRGB);

sfglassRGB = imfilter(fglass, H, 'replicate');
figure, imshow(sfglassRGB);

