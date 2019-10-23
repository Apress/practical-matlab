%Example7p7
%This code saves the movie as *.avi
myVideo = VideoWriter('myfile.avi');
uncompressedVideo = VideoWriter('myfile.avi',...
    'Uncompressed AVI');
myVideo.FrameRate = 40;
myVideo.Quality = 100;   
open(myVideo); % Open file to write
L = peaks;
surf(L); 
axis tight manual 
set(gca,'nextplot','replacechildren'); 
for m = 1:60 
   surf(sin(2*pi*m/20)*L,L)
   frame = getframe;
   writeVideo(myVideo, frame);
end
close(myVideo);%close file