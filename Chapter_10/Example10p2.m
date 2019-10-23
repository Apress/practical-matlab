%Example10p2
%This code covert jpg to png format
Cowboy = imread('Cowboys2.jpg');
imwrite(Cowboy,'Cowboys2.png');
Cowboy_png = imread('Cowboys2.png');
imshow(Cowboy_png)
