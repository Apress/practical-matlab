%Example11p3
% This code saves an audio file with info
load handel
filename = 'handel.flac';
audiowrite(filename,y,Fs,'BitsPerSample',24,...
'Comment','This is my first audio',...
'Title','Hallelujah','Artist','San Antonio');
sound(y,Fs);
clear y Fs
info = audioinfo(filename);
disp(info);


